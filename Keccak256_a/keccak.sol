//SPDX-License-Identifier:MIT

pragma solidity ^0.8.17;

contract Test {
    function hashString (string memory _input) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_input));
    }
}