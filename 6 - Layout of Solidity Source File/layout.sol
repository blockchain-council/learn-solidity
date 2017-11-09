//versiona pragma
pragma solidity ^0.4.16; 

//import section

// filename.sol
import "filename";

// begin the contract
/// @title This is the layout of the solidity code
contract ContractName {
    /*
    * @title A Simple Layout Example
    * @author Toshendra Sharma
    * @notice Example for the Solidity Course
    * @dev This line is for developers only
    * 
    */

    // This is a single-line comment.

    /*
    This is a
    multi-line comment.
    */

    // State Variables
    address public stateVariable1;
    uint public stateVariable2;
    uint private stateVariable3;
    string public constant HOST_ID = 0x1234;

    // Events
    event LogEvent1(address param1, uint param2);
    event LogEvent2(address param1);
    event LogEvent3();

    // Function Modifiers
    modifier onlyIfOwnerModifier() { 
        if (msg.sender != owner) return;
        _;
    }

    modifier onlyIfMortalModifier() { 
        if (msg.sender != mortal) return;
        _;
    }

    // Struct, arrays or Enum if any here
    enum enum1 { val1, val2, val3 }
    struct struct1 { 
        uint weight;
        uint height;
        address location;
    }
    mapping (address => uint) balances;


    // Define consutruct here
    function ContractName(uint initialCoins) public {
       // Initialize state variables here
    }

    /// @dev Comment for developers
    /// @param parameters details
    /// @return return variable details
    function function1(address param1, uint param2) public {
       //body of function here
       //
       //
    }

    /// @dev Comment for developers
    /// @param parameters details
    /// @return return variable details
    function function2(address param1, uint param2) public {
       //body of function here
       //
       //
    }

    //default function
    function(){
        revert();
    }

}
