// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Getset {

    // Declare variables
    uint256 public Uint;
    int public Int;
    string public String;
    bool public Bool;

    // Set functions
    function setUint(uint256 _newUint) public {
        Uint = _newUint;
    }

    function setInt (int _newInt) public {
        Int = _newInt;
    }

    function setString (string memory _newString) public {
        String = _newString;
    }

    function setBool (bool _newBool) public {
        Bool = _newBool;
    }

    // Get Functions

    function getUint() public view returns (uint256) {
        return Uint;
    }

    function getInt() public view returns (int) {
        return Int;
    }

    function getString() public view returns (string memory) {
        return String;
    }

    function getBool() public view returns (bool) {
        return Bool;
    }

}
