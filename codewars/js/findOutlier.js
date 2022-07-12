function findOutlier(integers) {
    return integers[0] % 2 == 0 && integers[1] % 2 == 0 || integers[1] % 2 == 0 && integers[2] % 2 == 0 || integers[0] % 2 == 0 && integers[2] % 2 == 0 ? integers.filter(item => item % 2 != 0)[0] : integers.filter(item => item % 2 == 0)[0];
}

console.log(findOutlier([0, 2, 4, 6, 8, 9, 10, 12]));
//ok 
