// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

// to demo the relationship between proxy and implementation contract.
// implementation contract should be deployed first before proxy contract.
// storage layout of implementation contract should be the same with proxy.

contract Proxy  {
    address public implementor;
    uint256 public storedData;


    function upgradeTo(address _newImplementation) public {
        implementor = _newImplementation;
    }

    function setStoredData(uint256 _data) public payable {
        (bool success, ) = implementor.delegatecall(abi.encodeWithSignature("setStoredData(uint256)", _data));
        require(success, "Delegate call failed");
    }
}

contract Implementation {
    address public implementor;
    uint256 public storedData;

    function setStoredData(uint256 _data) public {
        storedData = _data;
    }

}