// import * as tf from "@tensorflow/tfjs"
// import * as tf from "https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@2.0.0/dist/tf.min.js"

document.addEventListener('DOMContentLoaded', () => {

    var tf_alpha_zero_model

    async function loadTFModels() {

        const test_tensor = tf.tensor2d([0.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0], [1, 9], 'float32')
        console.log("[Test TFJS tensor]:", test_tensor)

        let model_location

        if (location.hostname === "localhost" || location.hostname === "127.0.0.1") {
            model_location = "http://localhost:8080/tic-tac-toe/tf_models/models_js/alpha_zero_model/model.json"
        } else {
            model_location = "tic-tac-toe/tf_models/models_js/alpha_zero_model/model.json"
        }

        tf_alpha_zero_model = await tf.loadGraphModel(model_location)
        let test_output = await tf_alpha_zero_model.predict(tf.tensor2d([0.0, -1.0, 1.0, -1.0, 0.0, 0.0, 0.0, 0.0, 0.0], [1, 9], 'float32'))
        console.log("[Test AlphaZero model ps]:", test_output[1].arraySync())
        console.log("[Test AlphaZero model v]:", test_output[0].arraySync())

    }

    loadTFModels()

    const arraySize = 9
    const winningCombinations = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8],
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8],
        [0, 4, 8],
        [2, 4, 6]
    ]

    // starting from the left border and turning clock-wise
    const borderToSet = [
        [0, 0, 1, 1],
        [1, 0, 1, 1],
        [1, 0, 0, 1],
        [0, 1, 1, 1],
        [1, 1, 1, 1],
        [1, 1, 0, 1],
        [0, 1, 1, 0],
        [1, 1, 1, 0],
        [1, 1, 0, 0]
    ]
    // hashmap for the borders
    var borderMap = {
        0: 'border-left',
        1: 'border-top',
        2: 'border-right',
        3: 'border-bottom'
    }

    let winnerSpan = document.getElementById('winner-span')
    let resetButton = document.getElementById('reset-button')
    let cellPDraw = document.getElementById('cell-pdraw')
    let cellPX = document.getElementById('cell-pX')
    let cellPO = document.getElementById('cell-pO')
    let doesAIStartButton = document.getElementById('AI_first')
    let minimaxButton = document.getElementById('minimax')
    let AlphaZeroButton = document.getElementById('alphazero')
    let grid = document.querySelector('.grid')
    let squares
    let currentPlayer

    // function to reset the game
    function reset() {

        currentPlayer = 1

        winnerSpan.innerHTML = '-'

        // create the divs inside the grid class
        grid.innerHTML = ''
        for (let i = 0; i < arraySize; i++) {

            let borderString = ''
            let borders = borderToSet[i]
            for (let j = 0; j < borders.length; j++) {
                if (borders[j] == 1) borderString += ' ' + borderMap[j] + ': 2px solid #000000;'
                else borderString += ' ' + borderMap[j] + ': 2px solid rgb(244, 244, 244);'
            }

            grid.innerHTML += '<div class="empty" style="' + borderString + '"></div>'

        }

        squares = Array.from(grid.getElementsByTagName('div'))

        showProbabilities()

        if (doesAIStartButton.checked) {
            AI_play(currentPlayer)

            currentPlayer = currentPlayer === 1 ? 2 : 1

            showProbabilities()
        }

        squares.forEach(square => {
            square.onclick = function () {

                if (this.classList.contains('empty')) {

                    this.classList = currentPlayer

                    if (currentPlayer === 1) {
                        /* for x */
                        this.classList.add('x')
                    } else {
                        /* for circle */
                        this.classList.add('circle')
                    }

                    showProbabilities()

                    let game = convertDivToGame()

                    console.log(game)


                    if (checkWinner(game, currentPlayer) == false && game.some(el => el === 0)) {

                        currentPlayer = currentPlayer === 1 ? 2 : 1

                        AI_play(currentPlayer)

                        currentPlayer = currentPlayer === 1 ? 2 : 1

                        showProbabilities()


                    }
                }
            }
        })
    }

    function showProbabilities() {

        let game = convertDivToGame()
        let probabilities = compute_probabilities(game)

        cellPDraw.innerHTML = Math.round(probabilities[0] * 1000) / 10 + '%'
        cellPX.innerHTML = Math.round(probabilities[1] * 1000) / 10 + '%'
        cellPO.innerHTML = Math.round(probabilities[2] * 1000) / 10 + '%'

        if (probabilities[0] === 1) {
            winnerSpan.innerHTML = 'Draw'
        } else if (probabilities[1] === 1) {
            winnerSpan.innerHTML = 'X wins'
        } else if (probabilities[2] === 1) {
            winnerSpan.innerHTML = 'O wins'
        }

    }


    function AI_play(player) {

        let game = convertDivToGame()
        let index

        if (minimaxButton.checked) index = decision(game, player)
        else if (AlphaZeroButton.checked) index = TF_decision(game, player)

        console.log("AI plays", index)

        squares[index].classList = player
        squares[index].onclick = () => { return false }

        if (player === 1) {
            /* for x */
            squares[index].classList.add('x')
        } else {
            /* for circle */
            squares[index].classList.add('circle')
        }

        game = convertDivToGame()

        console.log(game)

        checkWinner(game, player)

        decision(game, currentPlayer === 1 ? 2 : 1)
    }


    // initialize automatically the game at loading
    reset()

    resetButton.addEventListener('click', reset)


    function checkWinner(game, player) {

        for (let combo of winningCombinations) {
            // console.log(combo, combo.every(index => game[index] === player));
            if (combo.every(index => game[index] === player)) {

                console.log(winnerSpan.innerHTML)

                console.log("disable onclick")
                squares.forEach(square => {
                    square.onclick = () => { return false }
                })

                return true
            }
        }

        return false
    }

    function checkWinnerForRecursion(game, player) {

        for (let combo of winningCombinations) {
            if (combo.every(index => game[index] === player)) return true
        }

        return false
    }


    function convertDivToGame() {

        let game = Array()

        squares.forEach(square => {
            if (square.classList.contains('empty')) {
                game.push(0)
            } else if (square.classList.contains('1')) {
                game.push(1)
            } else if (square.classList.contains('2')) {
                game.push(2)
            }
        })

        return game
    }


    function TF_decision(game, player) {

        let model_prediction
        let move = -1


        let player_pov_game = game.map(el => { if (el === 2) { el = -1 * player } else { el = el * player }; return el; })
        console.log(player_pov_game)

        model_prediction = tf_alpha_zero_model.predict(tf.tensor2d(player_pov_game, [1, 9], 'float32'))
        console.log(model_prediction)
        ps = model_prediction[1].arraySync()[0]
        v = model_prediction[0].arraySync()[0]
        console.log("[TF model]", ps, v)

        move = ps.indexOf(Math.max(...ps))

        return move
    }


    function decision(game, player) {

        let index = []
        let minimax = -Infinity

        for (let i = 0; i < game.length; i++) {
            if (game[i] === 0) {
                let new_game_1 = game.slice()
                new_game_1[i] = player
                let value = compute_minimax(new_game_1, player)
                console.log(i, value)
                if (value > minimax) {
                    minimax = value
                    index = [i]
                } else if (value === minimax) {
                    index.push(i)
                }
            }
        }
        const randomElement = index[Math.floor(Math.random() * index.length)]
        return randomElement
    }


    function compute_minimax(game, maximizingPlayer) {

        let player = (game.filter(x => x == 1).length === game.filter(x => x == 2).length) ? 1 : 2
        let opponent = maximizingPlayer === 1 ? 2 : 1

        if (checkWinnerForRecursion(game, maximizingPlayer)) {
            return Infinity
        } else if (checkWinnerForRecursion(game, opponent)) {
            return -Infinity
        } else {
            if (game.some(element => element === 0)) {

                if (maximizingPlayer === player) {
                    // maximize
                    let max = -Infinity
                    for (let i = 0; i < game.length; i++) {
                        if (game[i] === 0) {
                            new_game = game.slice()
                            new_game[i] = player;
                            value = compute_minimax(new_game, maximizingPlayer)
                            max = Math.max(value, max)
                        }
                    }
                    return max
                } else {
                    // minimize
                    let min = Infinity
                    for (let i = 0; i < game.length; i++) {
                        if (game[i] === 0) {
                            new_game = game.slice()
                            new_game[i] = player;
                            value = compute_minimax(new_game, maximizingPlayer)
                            min = Math.min(value, min)

                        }
                    }
                    return min
                }
            } else {
                return 0.0
            }
        }
    }


    function compute_stats(game) {

        let nextPlayer
        let stats = []

        if (checkWinnerForRecursion(game, 1)) {
            return [1]
        } else if (checkWinnerForRecursion(game, 2)) {
            return [2]
        } else {
            if (game.some(element => element === 0)) {

                // console.log(game.filter(x => x==1).length === game.filter(x => x==2).length)

                if (game.filter(x => x == 1).length === game.filter(x => x == 2).length) nextPlayer = 1
                else nextPlayer = 2

                // console.log("Player", nextPlayer)

                for (let i = 0; i < game.length; i++) {
                    if (game[i] === 0) {
                        let new_game = game.slice()
                        new_game[i] = nextPlayer;
                        let new_stats = compute_stats(new_game)
                        stats = [...stats, ...new_stats]
                        // console.log(i, new_game, new_stats)
                    }
                }
            } else {
                return [0]
            }
        }

        return stats
    }

    function compute_probabilities(game) {

        let stats = compute_stats(game)
        let probabilities

        let pDraw = stats.filter(element => element === 0).length / stats.length
        let pX = stats.filter(element => element === 1).length / stats.length
        let pO = stats.filter(element => element === 2).length / stats.length

        probabilities = [pDraw, pX, pO]

        return probabilities
    }

})
