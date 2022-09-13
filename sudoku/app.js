
document.addEventListener('DOMContentLoaded', () => {

    testEasy = [
        [0,7,0,0,0,9,0,0,0],
        [8,0,0,0,2,0,6,0,3],
        [0,0,1,0,0,5,0,4,0],
        [0,5,0,0,0,0,1,0,0],
        [7,0,0,4,0,8,0,0,2],
        [0,0,3,0,0,0,0,6,0],
        [0,9,0,8,0,0,4,0,0],
        [2,0,6,0,1,0,0,0,5],
        [0,0,0,7,0,0,0,3,0]
    ];
    
    testMedium = [
        [2,0,0,0,0,0,0,4,0],
        [0,0,0,8,0,0,0,0,9],
        [0,0,6,0,0,3,5,0,0],
        [0,0,5,0,4,0,0,6,0],
        [0,0,0,5,0,7,0,0,0],
        [0,8,0,0,2,0,4,0,0],
        [0,0,8,7,0,0,9,0,0],
        [9,0,0,0,0,4,0,0,0],
        [0,2,0,0,0,0,0,0,8]
    ];
    
    testHard = [
        [5,0,0,0,0,0,0,0,6],
        [0,8,0,0,0,6,0,2,0],
        [0,0,1,0,9,0,4,0,0],
        [0,0,0,6,0,0,0,3,0],
        [0,0,4,0,1,0,9,0,0],
        [0,3,0,0,0,2,0,0,0],
        [0,0,7,0,5,0,1,0,0],
        [0,5,0,3,0,0,0,8,0],
        [8,0,0,0,0,0,0,0,2]
    ];

    let width = height = 9;
    let arraySize = width*height;
    let resetButton = document.getElementById('reset-button');
    let grid = document.querySelector('.grid');
    let squares;

    const availableEntries = {};

    grid.innerHTML = '';
    for (let i = 0; i < arraySize; i++) {

        grid.innerHTML += '<div class="cell"></div>';

    }

    squares = Array.from(grid.getElementsByClassName('cell'));
    
    const drawGrid = (grid) => {
        for (let i=0;i<height;i++) {
            for (let j=0;j<width;j++) {
                value = grid[i][j];
                if (value !== 0) squares[i*width+j].innerHTML = "<b>"+value+"</b>";
                else {
                    squares[i*width+j].innerHTML = "<small>"+availableEntries[i*width+j]+"</small>";
                }
            }
        }

    };

    function checkAvailableEntries(grid, row, col) {

        if ( grid[row][col] !== 0 ) return [];
    
        available = [1,2,3,4,5,6,7,8,9];
        let index;
    
        for (let n=0;n<height;n++) {
        
            index = available.indexOf(grid[n][col]);
            if (index > -1) {
                available.splice(index, 1);
            }
    
            index = available.indexOf(grid[row][n]);
            if (index > -1) {
                available.splice(index, 1);
            }
    
        }
    
        quadrant_row = Math.floor(row/3)*3 + 1;
        quadrant_col = Math.floor(col/3)*3 + 1;
        // console.log(quadrant_row, quadrant_col);
    
        for (let i=-1;i<=1;i++) {
            for (let j=-1;j<=1;j++) {
                index = available.indexOf(grid[quadrant_row+i][quadrant_col+j]);
                if (index > -1) { // only splice array when item is found
                    available.splice(index, 1); // 2nd parameter means remove one item only
                }
            }
        }
    
        return available;
    };
    
    function onlyPossible(availableEntries, row, col, value) {

        let index;
    
        let colCount = 0;
        for (let n=0;n<height;n++) {
    
            index = availableEntries[n*width+col].indexOf(value);
            if (index > -1) colCount++;

        }

        let rowCount = 0;
        for (let n=0;n<width;n++) {
    
            index = availableEntries[row*width+n].indexOf(value);
            if (index > -1) rowCount++;
    
        }
    
        quadrant_row = Math.floor(row/3)*3 + 1;
        quadrant_col = Math.floor(col/3)*3 + 1;
    
        let squareCount = 0;
        for (let i=-1;i<=1;i++) {
            for (let j=-1;j<=1;j++) {
    
                index = availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value);
                if (index > -1) squareCount++;
    
            }
        }
        if (squareCount===1 || rowCount===1 || colCount===1) return true;
    
        return false;
    };
    
    function solve(grid) {
    
        // loop to extract available entries and solve trivial cases
        for (let r=0;r<height;r++) {
            for (let c=0;c<width;c++) {
                let available = checkAvailableEntries(grid, r, c);
                if (available.length===1) {
                    grid[r][c] = available[0];
                    grid = solve(grid);
                }
                availableEntries[r*width+c] = available;
            }
        }
    
        // loop to solve more complex cases
        for (let pos in availableEntries) {
    
            intPos = parseInt(pos);
            row = Math.floor(intPos/width);
            col = intPos % width;
    
            console.log(row, col, availableEntries[pos]);
    
            for (let value of availableEntries[pos]) {
    
                // console.log(row, col, value);
    
                if ( onlyPossible(availableEntries, row, col, value) ) {
                    grid[row][col] = value;
                    grid = solve(grid);
                }
                
            }
        }
    
        // console.log(availableEntries);
        return grid;
    };

    solve(testMedium);
    drawGrid(testMedium);
})
