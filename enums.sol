//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

// to demo the usage of enum 

// Enums restrict a variable to have one of only a few predefined values. 
// The values in this enumerated list are called enums.

// With the use of enums it is possible to reduce the number of bugs in your code.

//For example, if we consider an application for a shoe shop, 
//it would be possible to restrict the glass size to small, medium, and large. 
//This would make sure that it would not allow anyone to order any size other than small, medium, or large.

contract test {
    enum ShoeSize {small, medium, large}
    ShoeSize choice;
    ShoeSize constant defaultChoice = ShoeSize.medium;

    function setLarge() public {
        choice = ShoeSize.large;
    }

    function getChoice() public view returns (ShoeSize) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
        return uint (defaultChoice);
    }
}