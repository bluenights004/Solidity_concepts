# Fallback function
Fallback function is a special function available to a contract. It has following features −

* It is called when a non-existent function is called on the contract.
* It is required to be marked external.
* It has no name.
* It has no arguments
* It can not return any thing.
* It can be defined one per contract.
* If not marked payable, it will throw exception if contract receives plain ether without data.
