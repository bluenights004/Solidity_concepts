pragma solidity ^0.8.0;

// To demo a smart contract that implements abstract contract.


// Abstract contract
abstract contract AbstractContract {
  
    function setNumber(uint256 _x) public virtual returns (uint256);

}

// Concrete contract that implements the abstract contract 
contract ConcreteContract is AbstractContract {
    string y;
    uint256 x;

    function setNumber(uint256 _x) public override returns (uint256) {
       x = _x;
     return x;
        // implementation of the setNumber function from the abstract contract
    }

}


