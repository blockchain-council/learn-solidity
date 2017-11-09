pragma solidity ^0.4.8;

    /*
    * @title A Simple Subcurrency Example
    * @author Toshendra Sharma
    * @notice Example for the Solidity Course
    * @dev This is only for demo the simple Coin example
    * 
    */

contract Sharer {
    function sendHalf(address addr) payable public returns (uint balance) {
        if (!addr.send(msg.value / 2))
            revert(); // User Generated Exception also reverts the transfer to Sharer
            // assert(condition) will also generate a User Exception

        // catching an exception is yet not possible    
        return this.balance;
    }
}

// Currently, Solidity automatically generates a runtime exception in the following situations:

// If you access an array at a too large or negative index (i.e. x[i] where i >= x.length or i < 0).
// If you access a fixed-length bytesN at a too large or negative index.
// If you call a function via a message call but it does not finish properly (i.e. it runs out of gas, has no matching function, or throws an exception itself), except when a low level operation call, send, delegatecall or callcode is used. The low level operations never throw exceptions but indicate failures by returning false.
// If you create a contract using the new keyword but the contract creation does not finish properly (see above for the definition of “not finish properly”).
// If you divide or modulo by zero (e.g. 5 / 0 or 23 % 0).
// If you shift by a negative amount.
// If you convert a value too big or negative into an enum type.
// If you perform an external function call targeting a contract that contains no code.
// If your contract receives Ether via a public function without payable modifier (including the constructor and the fallback function).
// If your contract receives Ether via a public getter function.
// If you call a zero-initialized variable of internal function type.
// If a .transfer() fails.



}
