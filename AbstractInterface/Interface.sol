// SPDX-License-Identifier:MIT

pragma solidity 0.8.17;

// to demo on how interface works between two contracts.
// interface serves as middle point where two contracts interact.

interface Interfacesample{
    function setStr (string memory _name) external;
    function getStr () external view returns (string memory);
    function setVal(uint num1, uint num2) external;
    function add () external view returns (uint);
}

 contract pureContract is Interfacesample {

     //private variables

     uint private num1;
     uint private num2;
     string public name;

     function setStr(string memory _name) public {
         name = _name;
     }

     function getStr() public view returns (string memory) {
         return name;
     }
     
    function setVal(uint x, uint y) public {
        num1 = x;
        num2 = y;
    }

     function add() public view returns (uint) {
         return num1 + num2;
     }
 }

 contract caller {

// create variable for Interfacesample named object
     Interfacesample object;
     string public String;

// store first new pureContract into variable object
     function callFunc() public{
         object = new pureContract();
     }

// then proceed with these functions.
     function getVal() public returns(uint){
        
         object.setVal(1,2);
         return object.add();
     }

     function getStr() public returns (string memory) {
        object.setStr("patrick");
        return object.getStr();
     }

 }
