//SPDX-License-Identifier:MIT

// to demo on how function overloading works
 
pragma solidity ^0.8.17;

contract Sample {
    function add (uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function add (uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }

    function add (uint[] memory numbers) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

}