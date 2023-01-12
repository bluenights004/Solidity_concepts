// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

// to demo on how the abstract contract works with derived contract

//abstract contract
abstract contract setter {
    string name;
    uint256 age;

    function setName() public virtual returns(string memory);

    function setAge (uint256 _age ) public returns (uint256){
    age = _age;
    return age;
    }
}

// derived contract
contract fullSetter is setter {
    function setName() public virtual override returns(string memory){
        return "Patrick";
    }

}