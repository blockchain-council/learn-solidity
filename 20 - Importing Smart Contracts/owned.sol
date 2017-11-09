pragma solidity ^0.4.9;
contract owned {
    function owned() public { owner = msg.sender; }
    address owner;
}
