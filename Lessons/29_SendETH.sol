// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 3 ways to send ETH
// transfer - 2300 gas, reverts
// send - 2300 gas, returns bool
// call - all gas, returns bool and data

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(msg.value);
        // if send = false "send failed"
        require(sent, "send failed");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "call failed");
    }
}

contract EthReceiver {
    event Log(uint256 amount, uint256 gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
