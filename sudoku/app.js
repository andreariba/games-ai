
document.addEventListener('DOMContentLoaded', () => {

    // impossible to solve for now
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
    let startButton = document.getElementById('start-button');
    let solveButton = document.getElementById('solve-button');
    let resetButton = document.getElementById('reset-button');
    let grid_el = document.querySelector('.grid');
    let squares;
    let input_grid = [];
    let availableEntries = {};

    function reset() {
        grid_el.innerHTML = '';
        for (let i = 0; i < arraySize; i++) {
            grid_el.innerHTML += '<div class="cell"></div>';
        }
        squares = Array.from(grid_el.getElementsByClassName('cell'));
        squares.forEach( square => {square.onclick = onClickSelect});
    }

    function onClickSelect() {
        squares.forEach( square => { if(square.classList.contains("selected") ) { square.classList="cell"}})
        this.classList.add("selected");
    }

    function convertToNumber(e) {
        if (e.keyCode === 49) {
            return 1;
        } else if (e.keyCode === 50) {
            return 2;
        } else if (e.keyCode === 51) {
            return 3;
        } else if (e.keyCode === 52) {
            return 4;
        } else if (e.keyCode === 53) {
            return 5;
        } else if (e.keyCode === 54) {
            return 6;
        } else if (e.keyCode === 55) {
            return 7;
        } else if (e.keyCode === 56) {
            return 8;
        } else if (e.keyCode === 57) {
            return 9;
        } else if (e.keyCode === 48) {
            return "";
        }
        return 0;
    }

    // assign function to input the current number pattern
    function start() {
        let tmp_grid = [];
        squares.forEach( square => {
            if (square.innerHTML !== "") {
                tmp_grid.push(parseInt(square.innerHTML));
            } else {
                tmp_grid.push(0);
            }
        });

        console.log(tmp_grid);
        input_grid = []
        while(tmp_grid.length>0) input_grid.push(tmp_grid.splice(0,9));

        availableEntries = init_available(input_grid);
        drawGrid(input_grid, availableEntries);
    }

    // assign function to number keys
    function control(e) {
        squares.forEach( square => { 
            const value = convertToNumber(e);
            if(square.classList.contains("selected") && value !==0  ) { 
                square.innerHTML = value;
            }
        })
    }

    // add an number listener
    document.addEventListener('keyup', control)
    // add reset button event
    resetButton.addEventListener('click', reset);
    // add start button event
    startButton.addEventListener('click', start);
    
    const drawGrid = (grid, availableEntries={}) => {
        for (let i=0;i<height;i++) {
            for (let j=0;j<width;j++) {
                value = grid[i][j];
                if (value !== 0) squares[i*width+j].innerHTML = "<b>"+value+"</b>";
                else {
                    if (Object.keys(availableEntries).length !== 0) squares[i*width+j].innerHTML = "<small>"+availableEntries[i*width+j]+"</small>";
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
    
    // recursive function returning all the possible combinations from an array of values
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


    // function to identify islands and keep only possible entries
    function keepIslands(combo, listEntries, label="") {

        let index;
        const size = combo.length;
        // combo = [...combo];
        let newEntries = [...listEntries];
        // console.log(newEntries);

        if(size===0) return newEntries;
    
        // Column
        let Count = 0;
        let totalCount = 0;
        for (let n=0;n<listEntries.length;n++) {
            let localCount = 0;
            // console.log(listEntries[n]);
            for (let value of combo) {
                index = listEntries[n].indexOf(value);
                if (index > -1) localCount++;
            }
            totalCount += localCount;
            if (localCount===size) Count++;
        }
        // console.log(combo, Count, totalCount);

        if (Count*size===totalCount && Count===size) {
            console.log(label, "island", combo);
            for (let n=0;n<newEntries.length;n++) {
                let count = 0;
                for (let value of combo) {
                    index = newEntries[n].indexOf(value);
                    if (index > -1) count++;
                }
                if (count===size) {
                    newEntries[n] = [...combo];
                    // console.log(n, newEntries[n]);
                } else {
                    for (let value of combo) {
                        index = newEntries[n].indexOf(value);
                        // console.log(newEntries[n], value, index);
                        if (index > -1) newEntries[n].splice(index,1);
                    }
                }
            } 
        }
    
        return newEntries;
    }
    
    function findIslandsAt(availableEntries, row, col) {

        let pos = row*width+col;
        let possibleChoices = [...availableEntries[pos]];
        // console.log(possibleChoices);

        let allCombinations = combinations(possibleChoices);

        for (let combo of allCombinations) {
            // console.log(combo)

            // Column
            const listColEntries = []
            for (let n=0;n<height;n++) {
                listColEntries.push([...availableEntries[n*width+col]]);
            }
            // console.log(listColEntries);
            const newColEntries = keepIslands([...combo], listColEntries, row+","+col+" col");
            // console.log(newColEntries);
            for (let n=0;n<height;n++) {
                // if (n*width+col === 78) console.log("78 ->",newColEntries[n]);
                availableEntries[n*width+col] = newColEntries[n];
            }

            // Row
            const listRowEntries = []
            for (let n=0;n<width;n++) {
                listRowEntries.push([...availableEntries[row*width+n]])
            }
            // console.log(listRowEntries);
            const newRowEntries = keepIslands(combo, listRowEntries, row+","+col+" row");
            // console.log(newRowEntries);
            for (let n=0;n<width;n++) {
                // if (row*width+n === 78) console.log("78 ->", newRowEntries[n]);
                availableEntries[row*width+n] = newRowEntries[n];
            }

            // Quadrant 
            quadrant_row = Math.floor(row/3)*3+1;
            quadrant_col = Math.floor(col/3)*3+1;
            const listQuadrantEntries = []
            for (let i=-1;i<=1;i++) {
                for (let j=-1;j<=1;j++) {
                    listQuadrantEntries.push([...availableEntries[(quadrant_row+i)*width + quadrant_col+j]])
                }
            }
            // console.log(listQuadrantEntries);
            const newQuadrantEntries = keepIslands([...combo], listQuadrantEntries, row+","+col+" quad");
            // console.log(newQuadrantEntries);
            for (let i=-1;i<=1;i++) {
                for (let j=-1;j<=1;j++) {
                    // if ((quadrant_row+i)*width + quadrant_col+j === 78) console.log("78 ->",newQuadrantEntries[(i+1)*3+j+1]);
                    availableEntries[(quadrant_row+i)*width + quadrant_col+j] = newQuadrantEntries[(i+1)*3+j+1];
                }
            }

            findQuadrantConstraints(availableEntries, row, col);
        }

    };

    function findQuadrantConstraints(availableEntries, row, col) {

        let pos = row*width+col;
        let possibleChoices = [...availableEntries[pos]];

        for (let value of possibleChoices) {

            // Quadrant 
            quadrant_row = Math.floor(row/3)*3+1;
            quadrant_col = Math.floor(col/3)*3+1;
            let isOnlyInRow = true;
            let isOnlyInColumn = true;
            for (let i=-1;i<=1;i++) {
                for (let j=-1;j<=1;j++) {
                    
                    if ( (quadrant_col+j) !== col) {
                        if (availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value) !== -1) {
                            isOnlyInColumn = false;
                        }
                    }

                    if ( (quadrant_row+i) !== row ) {
                        if (availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value) !== -1) {
                            isOnlyInRow = false;
                        }
                    }
                }
            }

            if (isOnlyInRow) {
                for (let n=0;n<width;n++) {
                    let q_col = Math.floor(n/3)*3+1;
                    if (q_col !== quadrant_col) {
                        const index = availableEntries[row*width+n].indexOf(value);
                        if (index>-1) {
                            availableEntries[row*width+n].splice(index,1);
                            console.log("findQuadrantConstraints row", row, n, value);
                        }
                    }
                }
            }

            if (isOnlyInColumn) {
                for (let n=0;n<height;n++) {
                    let q_row = Math.floor(n/3)*3+1;
                    if (q_row !== quadrant_row) {
                        const index = availableEntries[n*width+col].indexOf(value);
                        if (index>-1) {
                            availableEntries[n*width+col].splice(index,1);
                            console.log("findQuadrantConstraints col", n, col, value);
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
                if (available.length===1) {
                    grid[r][c] = available[0];
                    availableEntries[r*width+c] = [];
                    init_available(grid);
                } else {
                    availableEntries[r*width+c] = available;
                }
            }
        }

        return availableEntries
    };

    async function solve(grid, availableEntries = {}) {

        console.log("SOLVE");

        for (let pos in availableEntries) {
    
            intPos = parseInt(pos);
            row = Math.floor(intPos/width);
            col = intPos % width;
            // console.log("Checking", pos, row, col);
            findIslandsAt(availableEntries, row, col);
            // console.log("ONLY", 7*width+1,availableEntries[7*width+1])
        }

        // console.log("OUT", 7*width+1,availableEntries[7*width+1])
        drawGrid(grid, availableEntries);
        // console.log("OUT", 7*width+1,availableEntries[7*width+1])

        console.log("UPGRADE");

        for (let r=0;r<height;r++) {
            for (let c=0;c<width;c++) {
                const available = availableEntries[r*width +c];
                // console.log("Upgrading", r,c, available, available.length);

                if (available.length===0 && grid[r][c]===0) {
                    console.log("ERROR", r*width+c, r, c, grid[r][c], available);
                    return;
                } else if (available.length===1) {
                    let value = available.pop();
                    
                    console.log("Update",r, c,"to",value,"remaining",availableEntries[r*width +c]);

                    grid[r][c] = value;

                    let index;

                    for (let n=0;n<height;n++) {
                        index = availableEntries[n*width+c].indexOf(value);
                        if (index > -1) availableEntries[n*width+c].splice(index,1);
                    }
            
                    for (let n=0;n<width;n++) {
                        index = availableEntries[r*width+n].indexOf(value);
                        if (index > -1) availableEntries[r*width+n].splice(index,1);
                    }
                
                    quadrant_row = Math.floor(r/3)*3 + 1;
                    quadrant_col = Math.floor(c/3)*3 + 1;
                    for (let i=-1;i<=1;i++) {
                        for (let j=-1;j<=1;j++) {
                            index = availableEntries[(quadrant_row+i)*width + quadrant_col+j].indexOf(value);
                            if (index > -1) availableEntries[(quadrant_row+i)*width + quadrant_col+j].splice(index,1);
                        }
                    }

                }


            }
        }
        // drawGrid(grid, availableEntries);
        await new Promise(r => setTimeout(r, 2000));

        const number_of_zeros = grid.flat().filter(v => v === 0).length;
        // console.log(grid, number_of_zeros);
        // if (number_of_zeros!==0) {
        //     solve(grid, availableEntries);
        // }
    
    };

    solveButton.addEventListener('click', () => { solve(input_grid, availableEntries); drawGrid(input_grid, availableEntries);});

    reset();

    // grid = testHard3;
    // availableEntries = init_available(grid);
    // drawGrid(grid, availableEntries);

})
