// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

//to demo on how fallback function works between two contracts.

// contract with fallback function
contract testFallback {

  fallback() external payable {}
    
}

// contract to interact with contract testFallback
contract caller {

event Response(bool success, bytes data);

  // Calling a function that does not exist triggers the fallback function.
    function testCallDoesNotExist(address payable _addr) public payable {
        (bool success, bytes memory data) = _addr.call{value: msg.value}(
            abi.encodeWithSignature("doesNotExist()")
        );

        emit Response(success, data);
    }
     // function to receive ether
    receive() external payable {}
  
}

