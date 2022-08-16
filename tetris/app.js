// DOMContentLoaded is thrown when the html file has been loaded and parsed
document.addEventListener('DOMContentLoaded', () => {

    // get the grid from the HTML file
    const grid = document.querySelector('.grid')

    // assign each grid div to an element of an array
    let squares = Array.from( document.querySelector('.grid').getElementsByTagName('div') )

    // get the score
    const scoreDisplay = document.querySelector('#score')

    // get the start/pause button
    const startBtn = document.querySelector('#start-button')

    let score = 0
    let timerId

    const width = 10
    // const height = 20

    const colors = [
        'orange',
        'red',
        'purple',
        'green',
        'blue'
    ]

    // Tetraminoes
    const lTetramino = [
        [1,width+1,width*2+1,2],
        [width, width+1,width+2,width*2+2],
        [1,width+1,width*2+1,width*2],
        [0,width, width+1,width+2]
    ]
    
    const zTetramino = [
        [1,2,width,width+1],
        [0,width,width+1,width*2+1],
        [1,2,width,width+1],
        [0,width,width+1,width*2+1]
    ]

    const tTetramino = [
        [1,width,width+1,width+2],
        [1,width+1,width+2,width*2+1],
        [width,width+1,width+2,width*2+1],
        [1,width,width+1,width*2+1]
    ]

    const oTetramino = [
        [0,1,width,width+1],
        [0,1,width,width+1],
        [0,1,width,width+1],
        [0,1,width,width+1]
    ]

    const iTetramino = [
        [1,width+1,width*2+1,width*3+1],
        [width,width+1,width+2,width+3],
        [1,width+1,width*2+1,width*3+1],
        [width,width+1,width+2,width+3]
    ]

    const theTetraminoes = [lTetramino,zTetramino,tTetramino,oTetramino,iTetramino]

    // show up next tetramino on the mini-grid
    const displaySquares = Array.from( document.querySelector('.mini-grid').getElementsByTagName('div') )
    const displayWidth = 4
    const displayIndex = 0

    // list of up-next tetraminoes
    const upNextTetraminoes = [
        [1,displayWidth+1,displayWidth*2+1,2], // L
        [1,2,displayWidth,displayWidth+1], // Z
        [1,displayWidth,displayWidth+1,displayWidth+2], // T
        [0,1,displayWidth,displayWidth+1], // O
        [1,displayWidth+1,displayWidth*2+1,displayWidth*3+1] // I
    ]

    // initialize the variable to select the next tetramino
    let nextRandom = Math.floor( Math.random() * theTetraminoes.length )

    let currentPosition = 3
    let currentRotation = 0

    // select a random tetramino
    let random = Math.floor( Math.random() * theTetraminoes.length )
    let current = theTetraminoes[random][currentRotation]

    // function to draw a tetramino
    function draw() {
        current.forEach( index => {
            squares[ currentPosition + index ].classList.add('tetramino')
            squares[ currentPosition + index ].style.backgroundColor = colors[random]
        })
    }

    // function to undraw the tetramino
    function undraw() {
        current.forEach( index => {
            squares[ currentPosition + index ].classList.remove('tetramino')
            squares[ currentPosition + index ].style.backgroundColor = ''
        })
    }

    // assign function to keys
    function control(e) {
        if (e.keyCode===37) {
            moveLeft()
        } else if (e.keyCode===38) {
            rotate()
        } else if (e.keyCode===39) {
            moveRight()
        } else if (e.keyCode===40) {
            moveDown()
        }
    }

    // add an event listener
    document.addEventListener('keyup',control)

    // function to move down the tetramino
    function moveDown() {
        undraw()
        currentPosition += width
        draw()
        freeze()
    }

    // function to stop the tetramino when the lower cell are already taken
    function freeze() {
        if( current.some( index => squares[ currentPosition + index + width ].classList.contains('taken')) ) {

            current.forEach( index => squares[ currentPosition + index ].classList.add('taken'))

            // start a new tetramino
            random = nextRandom
            nextRandom = Math.floor( Math.random() * theTetraminoes.length )
            current = theTetraminoes[random][currentRotation]
            currentPosition = 4
            draw()
            displayShape()
            addScore()
            gameOver()
        }
    }

    // function to move the tetramino to the left
    function moveLeft() {
        undraw()
        const isAtLeftEdge = current.some( index => (currentPosition + index) % width == 0 )

        if( !isAtLeftEdge ) currentPosition -=1

        if( current.some( index => squares[currentPosition + index].classList.contains('taken')) ) {
            currentPosition += 1
        }

        draw()
    }

    // function to move the tetramino to the right
    function moveRight() {
        undraw()
        const isAtRightEdge = current.some( index => (currentPosition + index) % width === (width-1) )

        if( !isAtRightEdge ) currentPosition +=1

        if( current.some( index => squares[currentPosition + index].classList.contains('taken')) ) {
            currentPosition -= 1
        }

        draw()
    }

    function rotate() {
        undraw()

        currentRotation = (currentRotation+1) % 4
        current = theTetraminoes[random][currentRotation]

        if( current.some( index => squares[currentPosition + index].classList.contains('taken')) ) {
            currentRotation = (currentRotation + 3 ) % 4
            current = theTetraminoes[random][currentRotation]
        }
        draw()
    }

    // draw the next tetramino
    function displayShape() {
        displaySquares.forEach( square => {
            square.classList.remove('tetramino')
            square.style.backgroundColor = ''
        })
        upNextTetraminoes[nextRandom].forEach( index => {
            displaySquares[ displayIndex + index ].classList.add('tetramino')
            displaySquares[ displayIndex + index ].style.backgroundColor = colors[nextRandom]
        })
    }


    // add functionality to the start/stop button
    startBtn.addEventListener('click', () => {
        if (timerId) {
            clearInterval(timerId)
            timerId = null
        } else {
            draw()
            // make the tetramino move down every 500 milliseconds
            timerId = setInterval(moveDown, 500)
            displayShape()
        }
    } )

    // function to compute the scores and remove the full rows
    function addScore() {
        for (let i=0;i<squares.length-width-1;i+=width) {

            const row = [...Array(width).keys()].map(x => x + i);
            
            if ( row.every( index => squares[index].classList.contains('taken')) ) {
                score += 1
                scoreDisplay.innerHTML = score
                row.forEach( index => {
                    squares[index].classList.remove('taken')
                    squares[index].classList.remove('tetramino')
                    squares[index].style.backgroundColor = ''
                })
                const squaresRemoved = squares.splice(i,width)
                squares = squaresRemoved.concat(squares)
                squares.forEach( cell => grid.appendChild(cell))
                console.log(squaresRemoved)
            }
        }
    }

    // game over
    function gameOver() {
        if ( current.some( index => squares[currentPosition + index].classList.contains('taken')) ) {
            alert("GAME OVER!!!");
            clearInterval(timerId)
        }
    }

} )