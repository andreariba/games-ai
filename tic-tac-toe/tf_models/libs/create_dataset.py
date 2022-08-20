from TicTacToe import TicTacToe
from MCTS import MCTS
from model import create_model
from Trainer import Trainer
import pickle

trainer = Trainer(game=TicTacToe, mcts=MCTS, model=create_model())

dataset = trainer.create_dataset(number_of_games=1000, temperature=1)

with open("datasets/1000_tictactoe.pickle", "wb") as fp:
    pickle.dump(dataset, fp, protocol=pickle.HIGHEST_PROTOCOL)
