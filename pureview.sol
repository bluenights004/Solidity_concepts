// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// to demo the pure and view functions
contract ViewPure {
    uint public x = 5;
    string public name = "edward";

    // Promise not to modify or read from the state.
    function sumI(uint i, uint j) public pure returns (uint) {
        return i + j;
    }

    // Promise not to modify the state.
    function combineName (string memory _addname) public view returns (string memory, string memory){
      return (name, _addname);
    }
   // Promise not to modify the state.
    function showName() public view returns (string memory) {
        return name;
    }

    // Promise not to modify the state.
    function multiplyXby(uint y) public view returns (uint) {
        return x * y;
    }
}