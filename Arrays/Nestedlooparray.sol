// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract NestedloopArray {

    // to declare array variable named numbers which accepts uint data type;
    uint[] public numbers;
    uint[] public numbers2;

    // to fill the array with numbers using nested for loop.
    // since this is nested loop, we have to consider the number of activities to be implemented. 
    // overall no. of data inside array is 12 (3 from outer loop, then each outer loop there are 4 occasions from inner loop.

    function fillArrayNested() public {
        for (uint i = 0; i < 3; i++) { // this outer loop reiterates the inner loop in 3 occasions.
            for (uint j = 0; j < 4; j++) { // this inner loop reiterates the push method in 4 occasions.
                numbers.push(i * 4 + j); // this push method fills data in elements inside array
            }
        }
    }
    // to fill the array with numbers using one loop only.
    function fillArrayOneloop() public {
        for (uint i = 0; i < 3; i++) {
            numbers2.push(i * 4);
        }
    }

    // to show the value inside the variable array named numbers;
     function showNumbers() public view returns (uint[] memory) {
        return numbers;
    }
    // to show the value inside the variable array named numbers2;
    function showNumbers2() public view returns (uint[] memory) {
        return numbers2;
    }
}