pragma solidity ^0.8.7;

contract FeeCollector {
    // we are declaring owner variable as address type
    address public owner;
    // we are declaring balance of the owner as unsigned integer type
    uint256 public balance;

    // there we have a constructor function to start the contract
    constructor() {
        owner = msg.sender; // 0xfeC4A115911A120FdEd09a025b32D51e965E1214
    }

    // this function increases balance by value of 'msg.value'
    receive() external payable {
        balance += msg.value;
    }

    // this function sends ETH to given address
    function withdraw(uint256 amount, address payable destAddr) public {
        // throws error if msg.sender is not owner
        require(msg.sender == owner, "Only owner can withdraw");
        // throws error if amount > balance of the account
        require(amount <= balance, "Insufficient funds");
        // after being sure about the function,
        // we are sending eth to the given address
        destAddr.transfer(amount);
        // decreasing balance by value of the sent amount
        balance -= amount;
    }
}
