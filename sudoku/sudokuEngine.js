
const width = height = 9;

testEmpty = [
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0]
];

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
    [0,0,4,5,0,0,0,0,6],
    [0,9,0,0,8,0,0,3,0],
    [2,0,0,0,0,9,5,0,0],
    [7,0,0,0,0,0,4,0,0],
    [0,8,0,0,7,0,0,5,0],
    [0,0,3,0,0,0,0,0,8],
    [0,0,6,4,0,0,0,0,9],
    [0,2,0,0,6,0,0,7,0],
    [1,0,0,0,0,3,8,0,0]
];

// const checkAvailableEntries = (grid, row, col) => {

//     if ( grid[row][col] !== 0 ) return [];

//     available = [1,2,3,4,5,6,7,8,9];
//     let index;

//     for (let n=0;n<height;n++) {
    
//         index = available.indexOf(grid[n][col]);
//         if (index > -1) {
//             available.splice(index, 1);
//         }

//         index = available.indexOf(grid[row][n]);
//         if (index > -1) {
//             available.splice(index, 1);
//         }

//     }

//     quadrant_row = Math.floor(row/3)*3 + 1;
//     quadrant_col = Math.floor(col/3)*3 + 1;
//     // console.log(quadrant_row, quadrant_col);

//     for (let i=-1;i<=1;i++) {
//         for (let j=-1;j<=1;j++) {
//             index = available.indexOf(grid[quadrant_row+i][quadrant_col+j]);
//             if (index > -1) { // only splice array when item is found
//                 available.splice(index, 1); // 2nd parameter means remove one item only
//             }
//         }
//     }

//     return available;
// };

// const howManyTimes = (availableEntries, row, col, value) => {

//     let count = 0;
//     let index;

//     for (let n=0;n<height;n++) {

//         index = availableEntries[n*width+col].indexOf(value);
//         if (index > -1 && n !== row) count++;

//         index = availableEntries[row*width+n].indexOf(value);
//         if (index > -1 && n !== col) count++;

//     }

//     quadrant_row = Math.floor(row/3)*3 + 1;
//     quadrant_col = Math.floor(col/3)*3 + 1;

//     for (let i=-1;i<=1;i++) {
//         for (let j=-1;j<=1;j++) {
//             if( i===0 && j===0 ) continue;

//             index = available.indexOf(availableEntries[(quadrant_row+i)*width + quadrant_col+j]);
//             if (index > -1) count++;

//         }
//     }

//     return count;
// };

// const solve = (grid) => {

//     const availableEntries = {};

//     // loop to extract available entries and solve trivial cases
//     for (let r=0;r<height;r++) {
//         for (let c=0;c<width;c++) {
//             let available = checkAvailableEntries(grid, r, c);
//             if (available.length===1) {
//                 grid[r][c] = available[0];
//                 grid = solve(grid);
//             }
//             availableEntries[r*width+c] = available;
//         }
//     }

//     // loop to solve more complex cases
//     // for (let comboLength=1;comboLength<2;comboLength++) {
//     for (let pos in availableEntries) {

//         intPos = parseInt(pos);
//         row = Math.floor(intPos/width);
//         col = intPos % width;

//         console.log(row, col, availableEntries[pos]);

//         for (let value of availableEntries[pos]) {

//             let count = howManyTimes(availableEntries, row, col, value);

//             console.log(row, col, value, count);

//             if (count === 0) {
//                 grid[row][col] = value;
//                 index = availableEntries[pos].indexOf(value);
//                 if (index>-1) availableEntries[pos].splice(index,1);
//             }
            
//         }
//     }

//     // console.log(availableEntries);
//     return grid;
// };


// console.log("EASY");
// console.log(solve(testEasy));

// console.log("MEDIUM");
// console.log(solve(testMedium));

// console.log(solve(testHard));


const inputCombinations = [1,2,3,4,5];


function combinations(array) {
    
    //if (array.toString() in memo) return memo[array.toString()];
    const allCombinations = [[]];

    while (array.length>0) {
        const add = array.splice(0, 1);
        const subarray = [...array];
        const possibleCombinations = combinations(subarray);
        const newCombinations = possibleCombinations.map( el => [...add, ...el] );
        allCombinations.push(...newCombinations);
        
    }
    //memo[array.toString()] = allCombinations;
    //console.log(memo);
    return allCombinations;
};

console.table(combinations([1]))

console.table(combinations([1,2,3]))

console.table(combinations([1,2,3,4,5]))
