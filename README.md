# Games and AI

Web interfaces in HTML, css and javascript for 

1. Tic-Tac-Toe
2. 4-in-a-row
3. Tetris

This repository is a collection of AI algorithm to play games, you can play against the AIs at the github pages https://andreariba.github.io/games-ai. Currently, the implemented algorithms include

| Game        | minimax                        | Monte Carlo Tree Search | AlphaZero-like NN  | Deep Q-learning    |
| :---------: | :----------------------------: | :---------------------: | :----------------: | :----------------: |
| Tic-Tac-Toe | :heavy_check_mark: full depth  | in progress             | :heavy_check_mark: | not planned      |
| 4-in-a-row  | :heavy_check_mark: depth=4     | in progress             | :heavy_check_mark: | not planned     |
| Tetris      | not planned                    | in progress             | in progress        | in progress        |

The AlphaZero-like AI are still in a preliminary state, working on improving them.

## minimax references

Since the simplicity of the algorithm, I strongly recommend to read the Wiki page relative to the minimax, https://en.wikipedia.org/wiki/Minimax


## AlphaZero references

1. Brief overview on the idea's behind AlphaZero, https://medium.com/mlearning-ai/mastering-tictactoe-with-alphazero-cc28998bf36c

2. Nicely written implementation of AlphaZero for the Connect 2 game by Josh Varty, instructive and easy to follow, https://github.com/JoshVarty/AlphaZeroSimple.

3. The original Nature's paper from AlphaZero to get into some of the details about the structure of the network and the parameters for the training, https://www.nature.com/articles/nature24270.

4. David Foster's Cheat sheet, https://medium.com/applied-data-science/alphago-zero-explained-in-one-diagram-365f5abf67e0.
<p align="center">
<img alt="missing image" src="img/alpha_go_zero_cheat_sheet.png">
</p>