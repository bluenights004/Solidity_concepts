// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

// to demo the difference between calldata and memory
contract storageTest {

    string stringTest;

    function memoryTest (string memory _exampleString) public returns (string memory) {
        _exampleString = "example"; // you can modify the memory
        string memory newString = _exampleString; // you can use memory within function's logic
        return newString; // you can return memory
    }

    function calldataTest (string calldata _exampleString) external returns (string memory) {
        // can't modify_exampleString
        return _exampleString;
    }


}