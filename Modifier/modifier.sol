/ SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/// @notice allows only the admin to access and call all the functions of the contract.

contract Admin {
// Declare an address variable to store the admin address
address private admin;


// Declare a constructor function to set the admin address
constructor() {
admin = msg.sender;
}

// Declare a modifier to check if the caller is the admin
modifier onlyAdmin() {
require(msg.sender == admin, "Only the admin can call this function.");
_;
}

function add(uint x, uint y) public view onlyAdmin returns (uint) {
     return x + y;
    }

function subtract(uint x, uint y) public view onlyAdmin returns (uint) {
     return x - y;
    }
}