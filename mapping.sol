//SPDX-License-Identifier:MIT

// to demo how mapping works

pragma solidity ^0.8.0;

contract LedgerBalance {
    mapping(address => uint) public balances;
    mapping(uint => address) public account;

    function updateBal(uint newBal) public {
        balances[msg.sender] = newBal; //mapping the uint newBal into address msg.sender
    }

    function updateAcc(address newAdd) public {
        account[4] = newAdd; //mapping the address newAdd into uint 4
    }
}

contract Updater {
    function updateBal() public returns (uint) {
        LedgerBalance ledgerBal = new LedgerBalance();
        ledgerBal.updateBal(4);
        return ledgerBal.balances(address(this)); //mapping the uint into into contract address of Updater
    }
}