
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
    let availableEntries = {};

    grid.innerHTML = '';
    for (let i = 0; i < arraySize; i++) {

        grid.innerHTML += '<div class="cell"></div>';

    }

    squares = Array.from(grid.getElementsByClassName('cell'));
    
    const drawGrid = (grid, availableEntries) => {
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


    function combinations(array) {
    
        const allCombinations = [[]];
    
        while (array.length>0) {
            const add = array.splice(0, 1);
            const subarray = [...array];
            const possibleCombinations = combinations(subarray);
            const newCombinations = possibleCombinations.map( el => [...add, ...el] );
            allCombinations.push(...newCombinations);
            
        }

        return allCombinations;
    };


    function findIsland(combo) {
    
        // Column
        let colCount = 0;
        let totalCount = 0;
        for (let n=0;n<height;n++) {
            let count = 0;
            // console.log(n, col, availableEntries[n*width+col]);
            for (let value of combo) {
                index = availableEntries[n*width+col].indexOf(value);
                if (index > -1) count++;
            }
            totalCount += count;
            if (count===size) colCount++;
        }
        // console.log(combo, colCount, totalCount);

        if (colCount*size===totalCount && colCount===size) {
            console.log("col island", row, col, combo);
            for (let n=0;n<height;n++) {
                // console.log(combo);
                let count = 0;
                // console.log(n, col, combo, availableEntries[n*width+col]);
                for (let x of combo) {
                    console.log(x)
                }
                for (let value of combo) {
                    index = availableEntries[n*width+col].indexOf(value);
                    // console.log(value, index);
                    if (index > -1) count++;
                }
                // console.log(n, count);
                if (count===size) {
                    availableEntries[n*width+col] = combo;
                } else {
                    for (let value of combo) {
                        index = availableEntries[n*width+col].indexOf(value);
                        if (index > -1) availableEntries[n*width+col].splice(index,1);
                    }
                }
            }
 
        }
    
    }

    
    function findIsland_old(availableEntries, row, col) {

        let pos = row*width+col;
        let possibleChoices = [...availableEntries[pos]];
        // console.log(possibleChoices);

        let allCombinations = combinations(possibleChoices);

        // console.log(allCombinations)
        // console.log(allCombinations.length)

        // for (let combo of allCombinations) {
        //     console.log(combo)
        // }
        // return;
        for (let combo of allCombinations) {
            console.log(combo)

            const size = combo.length;
            if(size===0) continue;

            let index;

            let listColEntries = []
            for (let n=0;n<height;n++) {
                listColEntries = [...listColEntries, ...availableEntries[n*width+col]]
            }
            
            return
            // Column
            let colCount = 0;
            let totalCount = 0;
            for (let n=0;n<height;n++) {
                let count = 0;
                // console.log(n, col, availableEntries[n*width+col]);
                for (let value of combo) {
                    index = availableEntries[n*width+col].indexOf(value);
                    if (index > -1) count++;
                }
                totalCount += count;
                if (count===size) colCount++;
            }
            // console.log(combo, colCount, totalCount);

            if (colCount*size===totalCount && colCount===size) {
                console.log("col island", row, col, combo);
                for (let n=0;n<height;n++) {
                    // console.log(combo);
                    let count = 0;
                    // console.log(n, col, combo, availableEntries[n*width+col]);
                    for (let x of combo) {
                        console.log(x)
                    }
                    for (let value of combo) {
                        index = availableEntries[n*width+col].indexOf(value);
                        // console.log(value, index);
                        if (index > -1) count++;
                    }
                    // console.log(n, count);
                    if (count===size) {
                        availableEntries[n*width+col] = combo;
                    } else {
                        for (let value of combo) {
                            index = availableEntries[n*width+col].indexOf(value);
                            if (index > -1) availableEntries[n*width+col].splice(index,1);
                        }
                    }
                }
     
            }

            // Row
            let rowCount = 0;
            totalCount = 0;
            for (let n=0;n<width;n++) {
                let count = 0;
                // console.log(n, col, availableEntries[n*width+col]);
                for (let value of combo) {
                    index = availableEntries[row*width+n].indexOf(value);
                    if (index > -1) count++;
                }
                totalCount += count;
                if (count===size) rowCount++;
            }
            // console.log(combo, rowCount, totalCount);

            if (rowCount*size===totalCount && rowCount===size) {
                console.log("row island", row, col, combo);
                for (let n=0;n<width;n++) {
                    let count = 0;
                    // console.log(n, col, availableEntries[n*width+col]);
                    for (let value of combo) {
                        index = availableEntries[row*width+n].indexOf(value);
                        if (index > -1) count++;
                    }
                    // console.log(n, count);
                    if (count===size) {
                        availableEntries[row*width+n] = combo;
                    } else {
                        for (let value of combo) {
                            index = availableEntries[row*width+n].indexOf(value);
                            if (index > -1) availableEntries[row*width+n].splice(index,1);
                        }
                    }
                }
     
            }


            // Quadrant
            quadrant_row = Math.floor(row/3)*3 + 1;
            quadrant_col = Math.floor(col/3)*3 + 1;
            
            let squareCount = 0;
            totalCount = 0;
            for (let i=-1;i<=1;i++) {
                for (let j=-1;j<=1;j++) {
                    let count = 0;
                    for (let value of combo) {
                        index = availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value);
                        if (index > -1) count++;
                    }
                    totalCount += count;
                    if (count===size) squareCount++;
                }
            }

            // console.log(combo, squareCount, totalCount);
            
            if (squareCount*size===totalCount && squareCount===size) {
                console.log("square island", row, col, combo);
                for (let i=-1;i<=1;i++) {
                    for (let j=-1;j<=1;j++) {
                        let count = 0;
                        for (let value of combo) {
                            index = availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value);
                            if (index > -1) count++;
                        }
                        // console.log(n, count);
                        if (count===size) {
                            availableEntries[(quadrant_row+i)*width + quadrant_col+j] = combo;
                        } else {
                            for (let value of combo) {
                                index = availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value);
                                if (index > -1) availableEntries[(quadrant_row+i)*width + quadrant_col+j].splice(index,1);
                            }
                        }
                    }
                }
            }
        }

    };  

    function init_available(grid) {
        // loop to extract available entries and solve trivial cases
        let availableEntries = {}
        for (let r=0;r<height;r++) {
            for (let c=0;c<width;c++) {
                let available = checkAvailableEntries(grid, r, c);
                availableEntries[r*width+c] = available;
            }
        }

        return availableEntries
    };


    function solve(grid, availableEntries = {}) {

        for (let r=0;r<height;r++) {
            for (let c=0;c<width;c++) {
                let available = availableEntries[r*width +c];
                if (available.length===1) {
                    grid[r][c] = available[0];
                    availableEntries[r*width +c].pop();
                    //solve(grid, availableEntries);
                }
            }
        }
    
        // more complex cases
        for (let pos in availableEntries) {
    
            intPos = parseInt(pos);
            row = Math.floor(intPos/width);
            col = intPos % width;
    
            // console.log(pos, intPos, row, col, availableEntries[pos]);
            // findIsland(availableEntries, row, col);

            for (let value of availableEntries[pos]) {
    
                // console.log(row, col, value);
    
                if ( onlyPossible(availableEntries, row, col, value) ) {
                    grid[row][col] = value;
                    const indexToDelete = availableEntries[row*width +col].indexOf(value);
                    availableEntries[row*width +col].splice(indexToDelete,1);
                    solve(grid, availableEntries);
                }
                
            }
        }

        // if (grid.filter(v => v === 0).length===0) {}
        //     solve(grid, availableEntries);
    
        // return grid;
    };

    availableEntries = init_available(testEasy);
    solve(testEasy, availableEntries);
    drawGrid(testEasy, availableEntries);
    findIsland(availableEntries, 1, 7);
    findIsland(availableEntries, 1, 2);
    drawGrid(testEasy, availableEntries);

    // availableEntries = init_available(testMedium);
    // solve(testMedium, availableEntries);
    // drawGrid(testMedium, availableEntries);

    // availableEntries = init_available(testHard);
    // solve(testHard, availableEntries);
    // drawGrid(testHard, availableEntries);
})
