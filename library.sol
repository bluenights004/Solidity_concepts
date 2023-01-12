// SPDX-License-Identifier:MIT

pragma solidity 0.8.17;

library Lib {
    function multiply (uint x, uint y) pure internal returns (uint) {
        return x * y;
    }
}

contract M {

    using Lib for uint;

    uint z;

    function set(uint _z) public {
        z = _z; 
    }

    function addMultiply (uint x, uint y) view external returns (uint) {
        return z + x.multiply(y);
    }
}



