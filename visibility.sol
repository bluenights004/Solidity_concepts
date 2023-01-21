// SPDX-License-Identifier:MIT

//to demo the different types of variable scope

pragma solidity ^0.8.0;

contract C {
   uint public data = 30;
   uint internal iData= 10;

    uint storedData; // State variable
   constructor()  {
      storedData = 10;   
   }
   
   function x() public returns (uint) {
      data = 3; // internal access
      return data;
   }
}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
   function y() public returns (uint) {
      iData = 3; // internal access
      return iData;
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return storedData; //access the state variable
   }
}