pragma solidity ^0.4.16; 

/*
* @title A Simple Value Type Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
* @dev This line is for developers only
* 
*/

contract generalValueTypesContract {

    // uint is mostly used for currency value or amount as there is not float or double here
    //it can also be used for storing Unix timestamp
    uint x;

    // int of 256 bits, it cannot be changed after instantiation
    int constant variable1 = 8;

    // same effect as line above, here the 256 is explicit
    int256 constant variable2 = 8; 

    // A hexadecimal value stored in a constant with 'constant', compiler replaces each occurrence with actual value    
    uint constant VERSION_ID = 0x123A1; 


    // For int and uint, size can be explicitly set in steps of 8 up to 256 e.g., int8, int16, int24
    uint8 b;
    int64 c;
    uint248 e;

    // Type casting
    int x = int(b);

    // boolean variable
    // or can also be declared by 'var b = true;' for inferred typing
    bool b = true; 

    // Addresses - holds 20 byte/160 bit Ethereum addresses
    address public owner;

    // Bytes available from 1 to 32
    // byte is same as bytes1
    byte a; 
    bytes2 b;
    bytes32 c;

    // Dynamically sized bytes
    // A special array, same as byte[] array (but packed tightly)
    bytes m; 

    // same as bytes, but does not allow length or index access (for now)
    // below string is stored in UTF8, note double quotes, not single
    string n = "hello"; 

    // Type inferrence
    // var does inferred typing based on first assignment,
    // can't be used in functions parameters
    var a = true;

    // Arrays
    // Below is a static array whose length is 5 fixed
    bytes32[5] nicknames; 

    // dynamic array whose length can be changed at any time
    bytes32[] names; 

    // adding a new element using push function returns new length of the array
    uint newLength = names.push("John"); 

    // Dictionaries (any type to any other type)
    // mapping(_KeyType => _ValueType)
    mapping (string => uint) public balances;

    // Enums
    // often used for state machine
    enum State { Created, Locked, Inactive }; 

    // Declare variable from enum
    State public state; 

    // Initializing the state 
    state = State.Created;

    // enums can be explicitly converted to ints
    // below Locked will return 1
    uint createdState = uint(State.Locked); 


    // Define consutruct here
    function generalValueTypesContract(uint initialCoins) public {
       // Initialize state variables here
    }

}
