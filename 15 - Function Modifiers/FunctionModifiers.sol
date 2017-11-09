pragma solidity ^0.4.16; 

/*
* @title An Example for Solidity Course
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract FunctionModifiers {

	address public creator;
    // Define consutruct here
    function FunctionModifiers() public {
       // Initialize state variables here
       creator = msg.sender;
    }

    modifier onlyCreator() {
        if (msg.sender != creator) throw;
        _;
    }

    function kill() onlyCreator public { 
    	selfdestruct(creator);
    }

}
