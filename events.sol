// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/// @notice smart contract that defines and triggers 3 events, and then indexes the events so that they can be easily searched:

// This smart contract defines three events:
// - EventA: triggered when function A is called
// - EventB: triggered when function B is called
// - EventC: triggered when function C is called

contract MyContract {
    // Define the events
    event EventA(uint indexed aNumber);
    event EventB(string indexed bText);
    event EventC(address indexed cAddress);

    // Function to trigger EventA
    function A(uint aNumber) public {
        emit EventA(aNumber);
    }

    // Function to trigger EventB
    function B(string memory bText) public {
        emit EventB(bText);
    }

    // Function to trigger EventC
    function C(address cAddress) public {
        emit EventC(cAddress);
    }
}
