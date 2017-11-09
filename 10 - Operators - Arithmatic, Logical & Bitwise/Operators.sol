pragma solidity ^0.4.16; 

/*
* @title A Units & Global Variables Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract Operators {

    // Arithmatic Operators
    uint a = 10;
    // +, -, unary -, unary +, *, /, % (remainder), ** (exponentiation)
    uint b = 2**3; // b = 8

    // a++ and a-- are equivalent to a += 1 / a -= 1 
    // but the expression itself still has the previous value of a. 
    // In contrast, --a and ++a have the same effect on a but return the value after the change.
    a = a++; // a = 10
    a = ++a; // a = 11

    // a += e is equivalent to a = a + e. 
    // The operators -=, *=, /=, %=, a |=, &= and ^= are defined accordingly. 
    a += 5; // a = 11+5 = 16


    
    
    // Logical Operators
    // ! (logical negation)
    // && (logical conjunction, “and”)
    // || (logical disjunction, “or”)
    // == (equality)
    // != (inequality)
    bool isOwner;
    isOwner = isMortal && hasWriteAccess;
    isOwner = true && false; // false
    isOwner = true || false; // true
    isOwner = !false; // true
    var check = (1 ether == 1000 finney); // true
    var check = (1 ether != 2000 finney); // true

    // Bitwise Operators
    // & Bitwise AND 
    // | Bitwise OR 
    // ^ Bitwise exclusive OR 
    // ~ Bbitwise negation
    // >> Bitwise right shift
    // << Bitwise left shift
    var orValue = 0x02 | 0x01; // orValue = 0x03
    uint shiftValue = 0x01 << 2; // shiftValue = 4

    
    // Define consutruct here
    function Operators(uint initialCoins) {
       // Initialize state variables here
    }

}
