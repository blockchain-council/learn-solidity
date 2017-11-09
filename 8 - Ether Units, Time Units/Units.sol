pragma solidity ^0.4.16; 

/*
* @title A Units & Global Variables Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract Units {

    // msg represent the current message received by the contracts
    msg.sender; // address of sender
    msg.value; // amount of ether provided to this contract in wei
    msg.data; // bytes, complete call data
    msg.gas; // remaining gas
    msg.sig; // return the first four bytes of the call data

    

    // similarly tx represent the current transaction
    tx.origin; // address of sender of the transaction
    tx.gasprice; // gas price of the transaction

    // block represent the information about the current Block
    now; // current time (approximately), alias for block.timestamp (uses Unix time)
    block.number; // current block number
    block.difficulty; // current block difficulty
    block.blockhash(1); // returns bytes32, only works for most recent 256 blocks
    block.gasLimit(); //return Gas limit
    block.coinbase (); // return current block miner’s address

    // Ether Units are available as a global variables
    // wei, finney, szabo & ether are variable themself
    // variable can not be named as the wei, finney, szabo or ether
    bool isEqual = (2 ether == 2000 finney);


    // Time Units
    // seconds, minutes, hours, days, weeks, years are all available at time units to be used
    // can be used anywher in the program like mentioned below
    bool isEqual = (1 == 1 seconds);
    bool isEqual = (1 minutes == 60 seconds);
    bool isEqual = (1 hours == 60 minutes);
    bool isEqual = (1 days == 24 hours);
    bool isEqual = (1 weeks = 7 days);
    bool isEqual = (1 years = 365 days);


    Define consutruct here
    function Units(uint initialCoins) public {
       // Initialize state variables here
    }

}
