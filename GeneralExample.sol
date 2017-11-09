pragma solidity ^0.4.8; 

contract owned {
    function owned() public { owner = msg.sender; }
    address owner;
}

contract mortal is owned{

	function kill() public {
		selfdestruct(owner);
	}

}

contract User is owned, mortal{
	string public UserName;
	function User(string _name) public {
		UserName = _name;
	}
}




