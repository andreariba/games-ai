# Games and AI

Web interfaces in HTML, css and javascript for 

1. Tic-Tac-Toe
2. 4-in-a-row
3. Tetris

This repository is a collection of AI algorithm to play games. 

The implemented algorithms are


| Game        | minimax                        | Monte Carlo Tree Search | AlphaZero-like NN  | Deep Q-learning    |
| :---------: | :----------------------------: | :---------------------: | :----------------: | :----------------: |
| Tic-Tac-Toe | :heavy_check_mark: full depth  | in progress             | :heavy_check_mark: js version coming | in progress        |
| 4-in-a-row  | :heavy_check_mark: depth=4     | in progress             | in progress        | in progress        |
| Tetris      | in progress                    | in progress             | in progress        | in progress        |


## minimax references

Since the simplicity behind the algorithm, I strongly recommend to read the Wiki page relative to the minimax, https://en.wikipedia.org/wiki/Minimax


## Alpha-zero references

1. David Foster's Cheat sheet, https://medium.com/applied-data-science/alphago-zero-explained-in-one-diagram-365f5abf67e0.
<p align="center">
<img alt="missing image" src="img/alpha_go_zero_cheat_sheet.png">
</p>

2. Brief overview on the idea's behind AlphaZero, https://medium.com/mlearning-ai/mastering-tictactoe-with-alphazero-cc28998bf36c

3. Nicely written implementation of AlphaZero for the Connect 2 game by Josh Varty, instructive and easy to follow, https://github.com/JoshVarty/AlphaZeroSimple.

4. The original Nature's paper from AlphaZero to get into some of the details about the structure of the network and the parameters for the training, https://www.nature.com/articles/nature24270.

