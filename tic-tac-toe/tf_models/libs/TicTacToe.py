import numpy as np


class TicTacToe:

    winning_combinations = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6],
    ]

    def __init__(self):
        self.data = []
        self.status = "Ongoing"
        self.board = np.zeros(9)
        self.winner = 0
        self.player = 1
        self.winning_combination = []

    def get_action_size(self):
        return 9

    def get_available_actions(self, board):
        actions = np.zeros(board.shape)
        actions[board == 0] = 1
        return actions

    def check_if_winner(self, player):
        for i in range(len(TicTacToe.winning_combinations)):
            # print(i, self.winning_combinations[i], player)
            if np.all(self.board[self.winning_combinations[i]] == player):
                self.winner = player
                self.status = "Winner"
                self.winning_combination = self.winning_combinations[i]
                return True

        return False

    def get_reward_for_player(self, board, player):
        for i in range(len(TicTacToe.winning_combinations)):
            # print(i, self.winning_combinations[i], player)
            if np.all(board[self.winning_combinations[i]] == player):
                self.winner = player
                self.status = "Winner"
                return 1
            elif np.all(board[self.winning_combinations[i]] == -1 * player):
                self.winner = -1 * player
                self.status = "Winner"
                return -1
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

    def next_moves(self):
        player = self.next_player()
        if self.status != "Ongoing":
            return list()
        next_boards = list()
        for i in range(9):
            if self.board[i] == 0:
                next_board = np.copy(self.board)
                next_board[i] = player
                next_boards.append(next_board)
        return next_boards

    def next_state(self, board, player, action):
        self.board = board
        self.board[action] = player
        player = self.next_player()
        return self.board, player

    def play(self, board):
        self.board = board
        # print(board, self.check_if_winner())
        if not self.check_if_winner(self.player):
            if np.count_nonzero(board == 0) == 0:
                self.status = "Draw"
        self.next_player()

    def get_board_from_player(self, player):
        return self.board * player
