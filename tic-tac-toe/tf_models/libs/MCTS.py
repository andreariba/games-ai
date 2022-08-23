import math
import numpy as np


# Upper Confidence Bound
def ucb_score(parent, child):
    prior_score = child.prior * math.sqrt(parent.visit_count) / (child.visit_count + 1)
    if child.visit_count > 0:
        # The value of the child is from the perspective of the opposing player
        value_score = -child.value()
    else:
        value_score = 0

    return value_score + prior_score


class Node:
    def __init__(self, prior, player):
        self.children = {}
        self.state = None
        self.prior = prior
        self.player = player
        self.total_value = 0
        self.visit_count = 0
        self.leaf = False

    def __repr__(self):
        s = (
            f"State:\n{self.state*self.player}\nPlayer:{self.player}\nValue:{self.value()}\nLeaf:{self.leaf}\nVisits:{self.visit_count}\nChildren:\n"
            ""
        )
        for action, child in self.children.items():
            s += f" -{action}: prior={child.prior}\n"
        return s

    def is_leaf(self):
        return self.leaf

    def set_state(self, state, leaf):
        self.state = state
        self.leaf = leaf

    def value(self):
        if self.visit_count == 0:
            return 0
        return self.total_value / self.visit_count

    def expand(self, state, player, probs):
        self.player = player
        self.state = state
        for a, p in enumerate(probs):
            if p != 0:
                self.children[a] = Node(prior=p, player=-1 * self.player)

    def expanded(self):
        return len(self.children) > 0 or self.leaf

    def select_child(self):

        best_score = -np.inf
        best_actions = []

        for action, child in self.children.items():
            score = ucb_score(self, child)
            if score > best_score:
                best_score = score
                best_actions = [(action, child)]
            elif score == best_score:
                best_actions.append((action, child))
        if len(best_actions) == 0:
            print(self)
        chosen = np.random.choice(range(len(best_actions)))

        return best_actions[chosen]

    def select_action(self, temperature):
        visit_counts = np.array([child.visit_count for child in self.children.values()])
        available_actions = list(self.children.keys())
        # print(visit_counts, available_actions)
        if temperature == 0:
            # deterministic choice
            action = np.argmax(visit_counts)
        elif temperature == float("inf"):
            # completely random choice
            action = np.random.choice(available_actions)
        else:
            # simulated annealing
            visit_count_distribution = visit_counts ** (1 / temperature)
            visit_count_distribution = visit_count_distribution / sum(
                visit_count_distribution
            )
            action = np.random.choice(available_actions, p=visit_count_distribution)
        return action


class MCTS:
    def __init__(self, game, n_simulations):

        self.game = game
        self.n_simulations = n_simulations

    def run(self, model, state, player, root=None):

        if root is None:
            root = Node(0, player)
            state = state.copy()
        else:
            if (state != root.state).any():
                raise "Incompatible root and state"
            state = root.state.copy()

        if not root.expanded() and not root.is_leaf():
            if model is None:
                ps = self.game.get_available_actions(state)
            else:
                ps, v = model.predict(state[np.newaxis, :])
                mask_actions = self.game.get_available_actions(state)
                ps = ps.flatten() * mask_actions
            ps = ps / np.sum(ps)
            # v = v.flatten()

            root.expand(state, player, ps)

        # loop over the number of tree searches
        for _ in range(self.n_simulations):

            node = root

            search_path = [root]

            # get as deep as possible in the tree, keeping track of the path
            while node.expanded() and not node.is_leaf():
                action, node = node.select_child()
                search_path.append(node)
                parent = search_path[-2]

            # get the board of the parent
            state = parent.state.copy()

            # play the board
            self.game.play(state)
            # get the next states for the current player
            next_state, _ = self.game.next_state(board=state, player=1, action=action)

            # get the board from the point of view of the opponent
            next_state = self.game.get_board_from_player(player=-1)

            # get the value for this board for the opponent
            value = self.game.get_reward_for_player(next_state, player=1)

            # if the game is not over
            if value is None:

                # compute the probabilities and value from the model
                if model is None:
                    ps = self.game.get_available_actions(state)
                else:
                    ps, v = model.predict(next_state[np.newaxis, :])
                    mask_actions = self.game.get_available_actions(next_state)
                    ps = ps.flatten() * mask_actions
                ps = ps / np.sum(ps)
                # v = v.flatten()

                # since the game is not over expand the node to its child
                node.expand(next_state, parent.player * -1, ps)

            else:
                # just to keep track of the states of the leaves
                node.set_state(next_state, True)

            # backpropagate the value.
            # Remember that the current node keeps track of the reward of the next player
            self.backpropagate(search_path, value, parent.player * -1)

        return root

    def backpropagate(self, search_path, value, player):

        # for each node in the path
        for node in reversed(search_path):
            if value is not None:
                node.total_value += value if node.player == player else -value
            node.visit_count += 1
