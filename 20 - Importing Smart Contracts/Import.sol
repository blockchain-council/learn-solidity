pragma solidity ^0.4.9;
import "./owned.sol";

// import * as symbolName from "filename"; or import "filename" as symbolName; both are same
// import {symbol1 as alias, symbol2} from "filename";


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



