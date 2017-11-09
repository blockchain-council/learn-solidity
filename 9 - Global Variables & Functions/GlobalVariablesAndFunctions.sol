pragma solidity ^0.4.16; 

/*
* @title A Units & Global Variables Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract GlobalVariablesAndFunctions {

    
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


    // Mathematical and Cryptographic Functions
    assert(bool condition); // throws if the condition is not met.
    addmod(uint x, uint y, uint k) returns (uint); // compute (x + y) % k where the addition is performed with arbitrary precision and does not wrap around at 2**256.
    mulmod(uint x, uint y, uint k) returns (uint); // compute (x * y) % k where the multiplication is performed with arbitrary precision and does not wrap around at 2**256.
    keccak256(...) returns (bytes32); // compute the Ethereum-SHA-3 (Keccak-256) hash of the (tightly packed) arguments
    sha3(...) returns (bytes32); // alias to keccak256()
    sha256(...) returns (bytes32) // compute the SHA-256 hash of the (tightly packed) arguments
    ripemd160(...) returns (bytes20) // compute RIPEMD-160 hash of the (tightly packed) arguments
    ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address) // recover the address associated with the public key from elliptic curve signature or return zero on error
    revert(); // abort execution and revert state changes
    // sha3("ab", "c") == sha3("abc") == sha3(0x616263) == sha3(6382179) = sha3(97, 98, 99)

    // Address Related
    <address>.balance (uint256); // balance of the Address in Wei
    <address>.send(uint256 amount) returns (bool); //send given amount of Wei to Address, returns false on failure
    <address>.transfer(uint256 amount); // send given amount of Wei to Address, throws on failure

    // Contracts Related
    this; // (current contract’s type) the current contract, explicitly convertible to Address
    selfdestruct(address recipient); // destroy the current contract, sending its funds to the given Address



    // Define consutruct here
    function GlobalVariablesAndFunctions(uint initialCoins)  {
       // Initialize state variables here
    }

}
