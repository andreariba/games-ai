
document.addEventListener('DOMContentLoaded', () => {

    var tf_alpha_zero_model

    async function loadTFModels() {

        let test_input = tf.tensor2d([0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, -1.0, 1.0, 0.0, 1.0, -1.0], [1, 42], 'float32')
        tf_alpha_zero_model = await tf.loadGraphModel('http://localhost:8080/4_in_a_row/tf_models/models_js/alpha_zero_model/model.json')
        let test_output = await tf_alpha_zero_model.predict(test_input)

        console.log("[Test AlphaZero model ps]:", test_output[0].arraySync())
        console.log("[Test AlphaZero model v]:", test_output[1].arraySync())

    }

    loadTFModels()

    let arraySize = 42
    let width = 7

    let winningCombinations = [
        [0, 1, 2, 3],
        [0, width, 2 * width, 3 * width],
        [0, width + 1, 2 * width + 2, 3 * width + 3],
        [3, width + 2, 2 * width + 1, 3 * width]
    ]

    let winnerSpan = document.getElementById('winner-span')
    let resetButton = document.getElementById('reset-button')
    let doesAIStartButton = document.getElementById('AI_first')
    let minimaxButton = document.getElementById('minimax')
    let AlphaZeroButton = document.getElementById('alphazero')
    let grid = document.querySelector('.grid')
    let squares
    let currentPlayer

    function reset() {

        // create the divs inside the grid class
        grid.innerHTML = ''
        for (let i = 0; i < arraySize; i++) {

            grid.innerHTML += '<div id="' + i + '" class="empty"></div>'
            // grid.innerHTML += '<div id="' + i + '" class="empty">' + i + '</div>'

        }
        currentPlayer = 1
        squares = Array.from(grid.getElementsByTagName('div'))
        winnerSpan.innerHTML = '-'

        if (doesAIStartButton.checked) {

            AI_play(currentPlayer)

            currentPlayer = currentPlayer === 1 ? 2 : 1

        }

        squares.forEach(square => {
            square.onclick = function () {
                column = this.id % width
                console.log("Human plays column ", column)

                for (let i = 42 - width + column; i >= 0; i -= width) {
                    // console.log(i)
                    s = squares[i]
                    if (s.classList.contains('empty')) {
                        currentPlayer === 1 ? s.classList = 'player1' : s.classList = 'player2'

                        let game = convertDivToGame()

                        if (checkWinner(game, currentPlayer)) {
                            currentPlayer === 1 ? winnerSpan.innerHTML = 'Red wins' : winnerSpan.innerHTML = 'Yellow wins'
                            console.log("disable onclick")
                            squares.forEach(square => {
                                square.onclick = () => { return false }
                            })
                        }

                        game = convertDivToGame()

                        currentPlayer === 1 ? currentPlayer = 2 : currentPlayer = 1

                        AI_play(currentPlayer)

                        currentPlayer === 1 ? currentPlayer = 2 : currentPlayer = 1

                        break
                    }
                }
            }
        })
    }

    // initialize automatically the game at loading
    reset()

    resetButton.addEventListener('click', reset)

    // check for winner
    function checkWinner(game, player) {

        for (combo of winningCombinations) {

            for (let pos = 0; pos < arraySize; pos++) {
                shifted_combo = combo.map(el => el + pos)
                combo_rows = shifted_combo.map(el => Math.floor(el / width))

                // check if i'm already outside the board
                if (Math.max(...combo_rows) >= arraySize / width) continue

                // exclude combinations spanning the wrong numbers of rows
                let differenceRows = Math.max(...combo_rows) - Math.min(...combo_rows)
                if (differenceRows !== 3 && differenceRows !== 0) continue

                //console.log(pos, shifted_combo, differenceRows)

                // console.log(shifted_combo.every((el) => game[el] === player))
                if (shifted_combo.every((el) => game[el] === player)) {
                    //console.log(player, " wins with ", shifted_combo)
                    return true
                }
            }
        }
        return false
    }

    // extract the current state of the game and put it into a numerical array
    function convertDivToGame() {

        let game = Array()

        squares.forEach(square => {
            if (square.classList.contains('empty')) {
                game.push(0)
            } else if (square.classList.contains('player1')) {
                game.push(1)
            } else if (square.classList.contains('player2')) {
                game.push(2)
            }
        })

        return game
    }


    // AI player
    function AI_play(player) {

        let game = convertDivToGame()

        let index
        if (minimaxButton.checked) index = decision(game, player)
        else if (AlphaZeroButton.checked) index = TF_decision(game, player)

        console.log("AI plays column ", index % width)

        player === 1 ? squares[index].classList = 'player1' : squares[index].classList = 'player2'

        game = convertDivToGame()

        if (checkWinner(game, player)) {
            currentPlayer === 1 ? winnerSpan.innerHTML = 'Red wins' : winnerSpan.innerHTML = 'Yellow wins'
            console.log("disable onclick")
            squares.forEach(square => {
                square.onclick = () => { return false }
            })
        }
    }


    function decision(game, player) {


        let index = []
        let minimax = -Infinity

        for (let c = 0; c < width; c++) {
            for (let cell = 42 - width + c; cell >= 0; cell -= width) {
                if (game[cell] === 0) {
                    let new_game_1 = game.slice()
                    new_game_1[cell] = player
                    let value = compute_minimax(new_game_1, player)
                    // console.log(c, value)

                    if (value > minimax) {
                        minimax = value
                        index = [cell]
                    } else if (value === minimax) {
                        index.push(cell)
                    }
                    break
                }
            }
        }
        console.log(index)
        const randomElement = index[Math.floor(Math.random() * index.length)]
        return randomElement
    }

    function TF_decision(game, player) {

        let model_prediction
        let move = -1


        let player_pov_game = game.map(el => { if (el === 2) { el = -1 * player } else { el = el * player }; return el; })
        console.log(player_pov_game)

        model_prediction = tf_alpha_zero_model.predict(tf.tensor2d(player_pov_game, [1, arraySize], 'float32'))
        console.log(model_prediction)
        ps = model_prediction[0].arraySync()[0]
        v = model_prediction[1].arraySync()[0]
        console.log("[TF model]", ps, v)

        let column = ps.indexOf(Math.max(...ps))


        for (let cell = 42 - width + column; cell >= 0; cell -= width) {
            if (game[cell] === 0) {
                move = cell
                break
            }
        }

        return move
    }



    function compute_minimax(game, maximizingPlayer, depth = 4) {

        let player = (game.filter(x => x == 1).length === game.filter(x => x == 2).length) ? 1 : 2
        let opponent = maximizingPlayer === 1 ? 2 : 1

        if (depth === 0) return 0

        if (checkWinner(game, maximizingPlayer)) {
            return Infinity
        } else if (checkWinner(game, opponent)) {
            return -Infinity
        } else {
            if (game.some(el => el === 0)) {
                if (maximizingPlayer === player) {
                    // maximize
                    let max = -Infinity
                    for (let c = 0; c < width; c++) {
                        for (let cell = 42 - width + c; cell >= 0; cell -= width) {
                            if (game[cell] === 0) {
                                new_game = game.slice()
                                new_game[cell] = player;
                                value = compute_minimax(new_game, maximizingPlayer, depth - 1)
                                max = Math.max(value, max)
                                break
                            }
                        }
                    }
                    return max
                } else {
                    // minimize
                    let min = Infinity
                    for (let c = 0; c < width; c++) {
                        for (let cell = 42 - width + c; cell >= 0; cell -= width) {
                            if (game[cell] === 0) {
                                new_game = game.slice()
                                new_game[cell] = player;
                                value = compute_minimax(new_game, maximizingPlayer, depth - 1)
                                min = Math.min(value, min)
                                break
                            }
                        }
                    }
                    return min
                }

            } else {
                return 1
            }
        }
    }

})