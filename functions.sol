// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/// @notice Solidity contract that contains three functions: a view function, a pure function, and a payable function

contract Functions {
  uint public balance;

  function viewFunc() public view returns (uint) {
    return balance;
  }

  function pureFunc(uint x, uint y) public pure returns (uint) {
    return x * y;
  }

  function payableFunc() public payable {
    balance += msg.value;
  }
}