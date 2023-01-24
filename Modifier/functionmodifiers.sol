//SPDX-License-Identifier:MIT

// to demo on how modifier works on smart contract
// Function Modifiers are used to modify the behaviour of a function. 
// For example to add a prerequisite to a function.

pragma solidity ^0.8.0;

contract Owner {
    address owner; //declaring variable address named owner
    constructor() {
        owner = msg.sender; // set owner address as msg.sender
    }

    modifier onlyOwner {
        require (msg.sender == owner); // requires msg.sender should be equal to owner variable
        _; 
    }

    modifier costs (uint price) {
        if (msg.value >= price) { // requires msg.value is more than price variable
            _;
        }
    }
}

contract Register is Owner { // inheriting the contract Owner so it can access modifiers.
    mapping (address => bool) registeredAddresses;
    uint price;
    constructor(uint initialPrice) { price = initialPrice;}

    function register() public payable costs (price) { //payable here causes the function execution to send ETH to its contract address
        registeredAddresses[msg.sender] = true;        //this function also set bool value set to true in relation to msg.sender
    } 
    function changePrice(uint _price) public onlyOwner { // only Owner can change the price
        price = _price;
    }

    function getBool(address account) public view returns (bool) { // to view the bool value in connection with the input address
        return registeredAddresses[account];   // this is way of checking whether the mapping stores correct value (bool) in relation to its key (address)
    }
}