

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

function checkWinner(game, player) {

    for (let combo of winningCombinations) {
        // console.log(combo, combo.every( index => game[index]===player ));
        if (combo.every(index => game[index] === player)) return true
    }

    return false
}

// console.log( checkWinner([1,2,0,1,2,0,0,2,1], 1) )
// console.log( checkWinner([1,2,0,1,2,0,0,2,1], 2) )

function minimax(game, maximizingPlayer) {

    let nextPlayer = (game.filter(x => x == 1).length === game.filter(x => x == 2).length) ? 1 : 2
    let opponent = maximizingPlayer === 1 ? 2 : 1

    if (checkWinner(game, maximizingPlayer)) {
        return 1
    } else if (checkWinner(game, opponent)) {
        return 0
    } else {
        if (game.some(element => element === 0)) {

            if (maximizingPlayer === nextPlayer) {
                // maximize
                let max = -Infinity
                for (let i = 0; i < game.length; i++) {
                    if (game[i] === 0) {
                        new_game = game.slice()
                        new_game[i] = nextPlayer;
                        value = minimax(new_game, maximizingPlayer)
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
                        new_game[i] = nextPlayer;
                        value = minimax(new_game, maximizingPlayer)
                        min = Math.min(value, min)

                    }
                }
                return min
            }
        } else {
            return 0.3
        }
    }
}

console.log(minimax([1, 2, 0, 1, 2, 0, 0, 2, 1], 1))
console.log(minimax([1, 2, 0, 1, 2, 0, 0, 2, 1], 2))
console.log(minimax([1, 2, 0, 1, 2, 0, 0, 0, 1], 2))
console.log("--------------------")
console.log(minimax([1, 2, 0, 1, 2, 0, 0, 2, 1], 2))
console.log(minimax([1, 2, 2, 1, 2, 0, 0, 0, 1], 2))
console.log(minimax([1, 0, 2, 1, 0, 2, 0, 0, 0], 1))
console.log("--------------------")
console.log(minimax([1, 2, 1, 1, 2, 2, 0, 1, 0], 1))
console.log("--------------------")
console.log(minimax([1, 2, 1, 1, 2, 2, 0, 1, 0], 2))



function compute_stats(game, result = [], memo = {}) {

    let nextPlayer
    let stats = []

    if (checkWinner(game, 1)) {
        return [1]
    } else if (checkWinner(game, 2)) {
        return [2]
    } else {
        if (game.some(element => element === 0)) {

            // console.log(game.filter(x => x==1).length === game.filter(x => x==2).length)

            if (game.filter(x => x == 1).length === game.filter(x => x == 2).length) nextPlayer = 1
            else nextPlayer = 2

            // console.log("Player", nextPlayer)

            for (let i = 0; i < game.length; i++) {
                if (game[i] === 0) {
                    new_game = game.slice()
                    new_game[i] = nextPlayer;
                    new_stats = compute_stats(new_game)
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

    pDraw = stats.filter(element => element === 0).length / stats.length
    pX = stats.filter(element => element === 1).length / stats.length
    pO = stats.filter(element => element === 2).length / stats.length

    probabilities = [pDraw, pX, pO]

    return probabilities
}

// console.log( compute_probabilities([1,2,0,1,2,0,0,2,1]) )
// console.log( compute_probabilities([1,2,2,1,2,0,0,0,1]) )
// console.log( compute_probabilities([1,0,2,1,0,2,0,0,0]) )
// console.log( compute_probabilities([1,2,1,1,2,2,0,1,0]) )
// console.log( compute_probabilities([0,0,0,0,0.0,0,0,0]) )


function compute_Q(game, player, gamma) {

    let opponent = player === 1 ? 2 : 1
    let Q = 0

    if (game.filter(x => x == 1).length === game.filter(x => x == 2).length) nextPlayer = 1
    else nextPlayer = 2

    if (checkWinner(game, player)) {
        return 1
    } else if (checkWinner(game, opponent)) {
        return 0
    } else {
        if (game.some(element => element === 0)) {

            // console.log("Player", nextPlayer)

            for (let i = 0; i < game.length; i++) {

                if (game[i] === 0) {
                    new_game = game.slice()
                    new_game[i] = nextPlayer;
                    // console.log(i, new_game)
                    let q = gamma * compute_Q(new_game, player, gamma)
                    //console.log(Q, q)
                    Q = Math.max(Q, q)
                    //console.log(Q, q)
                }
            }
        } else {
            return 0.3
        }
    }
    // console.log(gamma)
    // console.log(Q)
    return Q
}

// console.log(compute_Q([1, 2, 0, 1, 2, 0, 0, 2, 1], 1, 0.8))
// console.log("--------------------")
// console.log(compute_Q([1, 2, 0, 1, 2, 0, 0, 2, 1], 2, 0.8))
// // console.log( compute_Q([1,2,2,1,2,0,0,0,1], 2, 0.5) )
// // console.log( compute_Q([1,0,2,1,0,2,0,0,0], 1, 0.5) )
// console.log("--------------------")
// console.log(compute_Q([1, 2, 1, 1, 2, 2, 0, 1, 0], 1, 0.8))
// console.log("--------------------")
// console.log(compute_Q([1, 2, 1, 1, 2, 2, 0, 1, 0], 2, 0.8))
// // console.log( compute_Q([0,0,0,0,0.0,0,0,0], 2, 0.5) )
