pragma solidity ^0.8.7;

contract FeeCollector {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender; // 0xfeC4A115911A120FdEd09a025b32D51e965E1214
    }

    receive() external payable {
        balance += msg.value;
    }

    function withdraw(uint256 amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        destAddr.transfer(amount);
        balance -= amount;
    }
}
