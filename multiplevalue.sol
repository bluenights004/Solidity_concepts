//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

// to demo on how function can return multiple values

contract result {

function getResult (uint a, uint b) public pure returns (uint sum, uint product) {
    product = a * b;
    sum = a + b;
  }
}