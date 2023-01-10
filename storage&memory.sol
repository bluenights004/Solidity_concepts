// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

// to demonstrate the usage of Storage and Memory data

contract MemoryStorage {
    // storage variable
    uint256 public storageData;

// this function uses storage data in which variable is stored on the blockchain.
 function setStorageData(uint256 _data) public {
        storageData = _data;
    }
// this function uses memory data in which variables are stored inside the function only.
 function addMemoryData (uint256 xmemory, uint256 ymemory) public pure returns (uint256) {
      return xmemory + ymemory;
 }

}   