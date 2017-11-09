pragma solidity ^0.4.8;

contract Coin {
    /*
    * @title A Simple Subcurrency Example
    * @author Toshendra Sharma
    * @notice Example for the Solidity Course
    * @dev This is only for demo the simple Coin example
    * 
    */
    address public minter;
    uint public totalCoins;

    event LogCoinsMinted(address indexed deliveredTo, uint indexed amount);
    event LogCoinsSent(address sentTo, uint amount);

    mapping (address => uint) balances;
    function Coin(uint initialCoins) public {
        minter = msg.sender;
        totalCoins = initialCoins;
        balances[minter] = initialCoins;
    }

    /// @notice Mint the coins
    /// @dev This does not return any value
    /// @param owner address of the coin owner, amount amount of coins to be delivered to owner
    /// @return Nothing
    function mint(address owner, uint amount) public {
        if (msg.sender != minter) return;
        balances[owner] += amount;
        totalCoins += amount;
        LogCoinsMinted(owner, amount);
    }

    function send(address receiver, uint amount) public {
        if (balances[msg.sender] < amount) return;
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        LogCoinsSent(receiver, amount);
    }

    function queryBalance(address addr) constant public returns (uint balance) {
        return balances[addr];
    }

    function killCoin() public returns (bool) {
        if (msg.sender != minter) return;
        selfdestruct(minter);
    }
}
