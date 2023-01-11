// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
// To demo the interaction of contract Sendeth calling non-existing function from contract fall.
// Calling non-existing function from contract fall, should trigger its fallback function. 

// contract with fallback function
contract fall {
  uint n;
  function set(uint value) external {
    n = value;
  }

  fallback() external payable {
    n = 0;
  }
}

// contract to interact with contract fall
contract Sendeth {

  function callfall(fall a) public returns (bool) {
     // calling a non-existing function
      (bool success,) = address(a).call(abi.encodeWithSignature("setter()"));
      require(success, "call failed");

      // sending ether to contract fall
      address payable payableA = payable(address(a));
      return(payableA.send(2 ether));
   }
     // function to receive ether for testing purposes
     receive() external payable {}
  
}
