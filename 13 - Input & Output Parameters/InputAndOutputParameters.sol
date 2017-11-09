pragma solidity ^0.4.16; 

/*
* @title A Units & Global Variables Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract InputAndOutputParameters {

    // Define consutruct here
    uint input1;
    address input2;
    function InputAndOutputParameters(uint _inputParam1, address _inputParam2) public {
       // Initialize state variables here
       input1 = _inputParam1;
       input2 = _inputParam2;
    }

    function newFunction1(uint _inputParam1, address _inputParam2) public returns (uint _outputParam1){
        _outputParam1 = _inputParam1 * 3;
    }

    function newFunction2(uint _inputParam1, uint _inputParam2) public returns (uint sum, uint product){
        sum = _inputParam1 + _inputParam2;
        product = _inputParam1 * _inputParam2;
    }

    function newFunction3(uint _inputParam1, uint _inputParam2) public returns (uint, uint){
        sum = _inputParam1 + _inputParam2;
        product = _inputParam1 * _inputParam2;
        return (sum, product);
    }

}
