pragma solidity ^0.4.8; 

/*
* @title Example for Learn Solidity - Build Decentralized Applications on Blockchain
* @author Ethereum Community
* @notice Example for the Solidity Course
*/

contract Test {
    // This function is called for all messages sent to
    // this contract (there is no other function).
    // Sending Ether to this contract will cause an exception,
    // because the fallback function does not have the "payable"
    // modifier.
    function() { x = 1; }
    uint x;
}


// This contract keeps all Ether sent to it with no way
// to get it back.
contract Sink {
    function() payable public { }
}


contract Caller {
    function callTest(Test test) public {
        test.call(0xabcdef01); // hash does not exist
        // results in test.x becoming == 1.

        // The following call will fail, reject the
        // Ether and return false:
        test.send(2 ether);
    }
}
