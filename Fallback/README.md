# Fallback function
Fallback function is a special function available to a contract. It has following features −

* It is called when a non-existent function is called on the contract.
* It is required to be marked external.
* It has no name.
* It has no arguments
* It can not return any thing.
* It can be defined one per contract.
* If not marked payable, it will throw exception if contract receives plain ether without data.

In other words, a fallback function is a function in a smart contract that is executed when no other function matches the input data. It is typically used as a catch-all function for handling unexpected input or for providing a default action when the contract is called with no data or with data that does not match any of the other functions in the contract. In Ethereum, the fallback function is also known as the "default function" and is identified by its lack of any specific function signature.