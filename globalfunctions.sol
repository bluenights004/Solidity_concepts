// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/// @notice Solidity contract that contains global functions in the message context namely: 
/// msg.value, msg.sender and gasleft()

contract GlobalFunctions {
    function getMsgValue() public payable returns (uint256) {
        return msg.value;
    }

    function getMsgSender() public view returns (address) {
        return msg.sender;
    }

    function getMsgGasleft() public view returns (uint256) {
        return gasleft();
    }
}