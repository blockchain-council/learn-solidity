pragma solidity ^0.4.16; 

/*
* @title A Units & Global Variables Example
* @author Toshendra Sharma
* @notice Example for the Solidity Course
*/

contract Miner{
	//The modifier payable has to be used for info, 
	// because otherwise, we would not be able to 
	// send Ether to it in the call m.info.value(10).gas(800)().
	function info() payable returns (uint ret) { return 42; }
}

contract FunctionCall {

	// Define consutruct here
	function FunctionCall(uint param1) {
	   // Initialize state variables here
	}

	Miner m;
	function setMiner(address addr) { m = Miner(addr); }
	//function setMiner(Miner _m) { m = _m; } is also correct

	function callMinerInfo() { m.info.value(10).gas(800)(); }


	//function can also be called as json object as parameters
	function someFunction(uint key, uint value) {
		// Do something
	}

	function demoFunction() {
        // named arguments
        someFunction({value: 2, key: 3});
    }


    //variable names are optional in parameters & in returns
    function someFunction2(uint key, uint) returns (uint){ 
    	// Do something
    	reutrn key;
    }

	
}
