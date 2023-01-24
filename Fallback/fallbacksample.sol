// SPDX-License-Identifier:MIT

//to demo on how Fallback function works

pragma solidity ^0.8.17;

contract Test {
  
    uint public x ;
   fallback() external { x = 1;  //this fallback function will be triggered because of calling non-existing function by contract Caller
 
    } 
}

contract Sink {
    receive() external payable {}
    
    function viewBal () public view returns (uint256) {
        return address(this).balance;
    }
}

contract Caller {
    function callTest(Test test) public returns (bool) {
        (bool success, ) = address(test).call(abi.encodeWithSignature("nonExistingFunction()"));
        require(success);
        //this line is calling "nonExistingFunction" therefore fallback function will be triggered.
        //the result will be assignment of variable x with value of 1.

        address testPayable = address (test);

        //sending ether to test contract,
        // the transfer will fail because variable bool named success is not successful in calling function named "nonExistingFunction".
        return (payable(testPayable).send(2 ether));
    }
    function callSink(Sink sink) public returns (bool) { // to send 2 ether for contract Sink

        address testSink = address (sink);
        return (payable(testSink).send(2 ether));
    }

    function deposit() public payable { // to deposit ether for testing so function callSink can send ether.
        require (msg.value > 0);    
    }

}
