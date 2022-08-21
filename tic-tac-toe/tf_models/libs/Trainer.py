import numpy as np
import tensorflow as tf


class Trainer:
    def __init__(self, game, mcts, model):

        self.model = model
        self.game_p = game
        # self.game = None
        self.mcts_p = mcts
        self.mcts_sims = 500
        self.optimizer = None
        self.losses = []

    def save_model(self):
        self.model.save("saved_model/alpha_zero_model")

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

    def train(self, dataset, n_epochs=1000, batch_size=20, learning_rate=1e-4):

        self.losses = []

        # self.optimizer = tf.keras.optimizers.Adam(learning_rate=learning_rate)

        boards, estimated_pis, estimated_vs = list(zip(*dataset))

        boards = tf.concat([b[np.newaxis, :] for b in boards], axis=0)
        estimated_pis = tf.concat([p[np.newaxis, :] for p in estimated_pis], axis=0)

        estimated_pis = tf.cast(estimated_pis, dtype=tf.float32)
        estimated_vs = tf.constant(estimated_vs, dtype=tf.float32)

        # tf_dataset = (
        #     tf.data.Dataset.from_tensor_slices((boards, (estimated_pis, estimated_vs)))
        #     .shuffle(100)
        #     .batch(batch_size)
        # )

        # test_dataset = tf_dataset.take(1000)
        # train_dataset = tf_dataset.skip(1000)

        self.model.compile(
            # Optimizer
            optimizer=tf.keras.optimizers.RMSprop(learning_rate=learning_rate),
            # Loss function to minimize
            loss=[
                tf.keras.losses.CategoricalCrossentropy(),
                tf.keras.losses.MeanSquaredError(),
            ],
            # List of metrics to monitor
            metrics=[tf.keras.metrics.MeanSquaredError()],
            run_eagerly=False,
        )

        def scheduler(epoch, lr):
            if epoch < 10:
                return lr
            else:
                return lr * tf.math.exp(-0.1 * epoch)

        self.model.fit(
            x=boards,
            y=(estimated_pis, estimated_vs),
            epochs=n_epochs,
            batch_size=batch_size,
            callbacks=[
                tf.keras.callbacks.EarlyStopping(
                    monitor="loss", patience=20, restore_best_weights=True
                ),
                tf.keras.callbacks.LearningRateScheduler(scheduler),
            ],
            use_multiprocessing=True,
        )
