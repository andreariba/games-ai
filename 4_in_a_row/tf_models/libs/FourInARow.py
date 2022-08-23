import numpy as np


class FourInARow:
    def __init__(self):

        self.arraySize = arraySize = 42
        self.width = width = 7

        self.board = np.zeros(arraySize)
        self.status = "Ongoing"
        self.winner = 0

        self.winningCombinations = np.array(
            [
                [0, 1, 2, 3],
                [0, width, 2 * width, 3 * width],
                [0, width + 1, 2 * width + 2, 3 * width + 3],
                [3, width + 2, 2 * width + 1, 3 * width],
            ]
        )

    def get_action_size(self):
        return self.width

    def get_available_actions(self, board):
        actions = np.zeros(self.width)
        for i in range(self.width):
            if np.any(board[i :: self.width] == 0):
                actions[i] = 1
        return actions

    def get_board_from_player(self, player):
        return self.board * player

    def check_if_winner(self, player):

        arraySize = self.arraySize
        width = self.width

        for combo in self.winningCombinations:

            for pos in range(arraySize):

                # print(combo, pos)
                shifted_combo = combo + pos
                combo_rows = shifted_combo // width

                # check if i'm already outside the board
                if max(combo_rows) >= arraySize // width:
                    continue

                # exclude combinations spanning the wrong numbers of rows
                differenceRows = max(combo_rows) - min(combo_rows)
                if differenceRows != 3 and differenceRows != 0:
                    continue

                # console.log(pos, shifted_combo, differenceRows)

                # console.log(shifted_combo.every((el) => game[el] === player))
                if (np.array([self.board[el] for el in shifted_combo]) == player).all():
                    # print(player, " wins with ", shifted_combo)
                    self.status = "Winner"
                    self.winner = player
                    return True

        return False

    def play(self, board):
        self.board = board.copy()

    def get_reward_for_player(self, board, player):
        arraySize = self.arraySize
        width = self.width

        for combo in self.winningCombinations:

            for pos in range(arraySize):

                shifted_combo = combo + pos
                combo_rows = shifted_combo // width

                # check if i'm already outside the board
                if max(combo_rows) >= arraySize // width:
                    continue

                # exclude combinations spanning the wrong numbers of rows
                differenceRows = max(combo_rows) - min(combo_rows)
                if differenceRows != 3 and differenceRows != 0:
                    continue

                if (np.array([board[el] for el in shifted_combo]) == player).all():
                    self.status = "Winner"
                    self.winner = player
                    return 1.0
                elif (
                    np.array([board[el] for el in shifted_combo]) == -1 * player
                ).all():
                    self.status = "Winner"
                    self.winner = -1 * player
                    return -1.0

        if np.any(board == 0):
            return None

        self.status = "Draw"
        return 0

    def next_player(self):
        board = list(self.board)
        if board.count(1) == board.count(-1):
            self.player = 1
        else:
            self.player = -1
        return self.player

    def next_state(self, board, player, action):
        self.board = board
        for pos in range(35 + action, -1, -self.width):
            if self.board[pos] == 0:
                self.board[pos] = player
                break
        player = self.next_player()
        return self.board, player
