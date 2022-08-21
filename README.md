# Games and AI

Web interfaces in HTML, css and javascript for 

1. Tic-Tac-Toe
2. 4-in-a-row
3. Tetris

This repository is a collection of AI algorithm to play games. 

The implemented algorithms are


| Game        | minimax                        | MCTS               | AlphaZero-like NN  | DQN                |
| ----------- | -----------------------------  | ------------------ | ------------------ | ------------------ |
| Tic-Tac-Toe | :heavy_check_mark: full depth  | :white_check_mark: | :heavy_check_mark: | not suitable       |
| 4-in-a-row  | :heavy_check_mark: depth=4     | :white_check_mark: | :white_check_mark: | not suitable       |
| Tetris      | :white_check_mark:             | :white_check_mark: | not suitable       | :white_check_mark: |


## minimax references

Since the simplicity behind the algorithm, I strongly recommend to read the Wiki page relative to the minimax, https://en.wikipedia.org/wiki/Minimax


## Alpha-zero references

1. David Foster's Cheat sheet, https://medium.com/applied-data-science/alphago-zero-explained-in-one-diagram-365f5abf67e0
<p align="center">
<img alt="missing image" src="img/alpha_go_zero_cheat_sheet.png">
</p>

2. Brief overview on the idea's behind AlphaZero, https://medium.com/mlearning-ai/mastering-tictactoe-with-alphazero-cc28998bf36c

3. Nicely written implementation of AlphaZero for the Connect 2 game from Josh Varty, instructive and easy to follow https://github.com/JoshVarty/AlphaZeroSimple

