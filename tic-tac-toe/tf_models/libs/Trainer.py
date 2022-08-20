import numpy as np
import tensorflow as tf

# from MCTS import MCTS
# from model import create_model


class Trainer:
    def __init__(self, game, mcts, model):

        self.model = model
        self.game_p = game
        # self.game = None
        self.mcts_p = mcts
        self.mcts_sims = 50
        self.optimizer = None
        self.losses = []

    def save_model(self):
        self.model.save("saved_model/alpha_zero_model")

    def load_model(self):
        self.model = self.model.load_model("saved_model/alpha_zero_model")

    def create_dataset(self, number_of_games, temperature):

        dataset = []

        for n in range(number_of_games):

            train_examples = []

            game = self.game_p()
            current_player = 1

            self.mcts = self.mcts_p(game=self.game_p(), n_simulations=self.mcts_sims)
            root = None

            while game.status == "Ongoing":

                # extract the current board from the POV of the current player
                current_state_from_player_POV = game.get_board_from_player(
                    current_player
                )
                current_state = game.get_board_from_player(player=1)
                # print(f"{current_state.reshape(3,3)}")

                # run the MCTS
                root = self.mcts.run(
                    self.model, current_state_from_player_POV, current_player, root
                )

                # extract the probabilities estimated from MCTS
                estimated_probabilities = np.zeros(game.get_action_size())
                for action, child in root.children.items():
                    estimated_probabilities[action] = child.visit_count
                estimated_probabilities /= estimated_probabilities.sum()

                # extract the value from MCTS (NOT NEEDED)
                estimated_value = root.value()

                train_examples.append(
                    (
                        current_state_from_player_POV,
                        current_player,
                        estimated_probabilities,
                    )
                )

                # print(f"Probs:{estimated_probabilities}\nValue:{estimated_value}")

                # take an action
                action = root.select_action(temperature=temperature)
                next_state, current_player = game.next_state(
                    board=current_state, player=current_player, action=action
                )

                reward = game.get_reward_for_player(
                    board=next_state, player=current_player
                )

                root = root.children[action]

                # print(f"{next_state.reshape(3,3)}")
                # print(f"Probs:{estimated_probabilities}\nValue:{estimated_value}\nReward:{reward}")

                if reward is not None:
                    ret = []
                    for (
                        historical_board,
                        historical_player,
                        historical_probs,
                    ) in train_examples:
                        ret.append(
                            (
                                historical_board,
                                historical_probs,
                                reward
                                * ((-1) ** (historical_player != current_player)),
                            )
                        )

                    dataset += ret

        return dataset

    def train(
        self, n_epochs=1000, n_games_per_epoch=10, learning_rate=1e-4, l2_weight=1e-4
    ):

        self.losses = []

        self.optimizer = tf.keras.optimizers.Adam(learning_rate=learning_rate)
        temperatures = np.linspace(1, 0.01, n_epochs)

        for epoch in range(n_epochs):

            dataset = self.create_dataset(
                number_of_games=n_games_per_epoch, temperature=temperatures[epoch]
            )

            boards, estimated_pis, estimated_vs = list(zip(*dataset))

            boards = tf.concat([b[np.newaxis, :] for b in boards], axis=0)
            estimated_pis = tf.concat([p[np.newaxis, :] for p in estimated_pis], axis=0)

            estimated_pis = tf.cast(estimated_pis, dtype=tf.float32)
            estimated_vs = tf.constant(estimated_vs, dtype=tf.float32)

            with tf.GradientTape() as tape:

                predicted_pis, predicted_vs = self.model(boards)

                # print(predicted_pis, estimated_pis)
                # print(predicted_vs, estimated_vs)

                # compute the log of the predicted pis and delete the inf
                log_predicted_pis = tf.math.log(predicted_pis)
                log_predicted_pis = tf.where(
                    tf.math.is_inf(log_predicted_pis),
                    tf.zeros_like(log_predicted_pis),
                    log_predicted_pis,
                )

                # rint(tf.cast(estimated_pis, dtype=tf.float32 ) * log_predicted_pis)

                # pprint(tf.reduce_sum(tf.cast(estimated_pis, dtype=tf.float32 ) * log_predicted_pis,axis=1))
                p_losses = -tf.reduce_sum(estimated_pis * log_predicted_pis, axis=1)
                # print(predicted_vs[:,0]-estimated_vs)
                # print( predicted_vs[:,0]-estimated_vs)
                v_losses = tf.math.square(predicted_vs[:, 0] - estimated_vs)

                l2_loss = tf.add_n(
                    [tf.nn.l2_loss(v) for v in self.model.trainable_variables]
                )

                loss_values = p_losses + v_losses + l2_weight * l2_loss

            grads = tape.gradient(loss_values, self.model.trainable_variables)
            self.optimizer.apply_gradients(zip(grads, self.model.trainable_variables))
            total_loss = tf.reduce_mean(loss_values)

            diff_pis = tf.reduce_mean(tf.math.square(predicted_pis - estimated_pis))
            diff_vs = tf.reduce_mean(tf.math.square(predicted_vs[:, 0] - estimated_vs))

            self.losses.append(total_loss)
            print(
                f"Epoch {epoch+1}, loss={total_loss}, l2={l2_loss}, p={diff_pis}, v={diff_vs}, T={temperatures[epoch]}"
            )
