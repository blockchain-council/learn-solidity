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

// Multiple inheritance is possible. Note that "owned" is
// also a base class of "mortal", yet there is only a single
// instance of "owned" (as for virtual inheritance in C++).
contract User is owned, mortal{
    string public UserName;

    function User(string _name) public {
        UserName = _name;
    }
}



