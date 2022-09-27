// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Mapping
// How to declare a mapping (simple and nested)
// Set, get, delete

// ["alice", "bob", "charlie"]
// { "alice": true, "bob": true, "charlie": true }

contract Mapping {
    // address1 = 0, address2 = 1, address3 = 2...
    mapping(address => uint256) public balances;

    //
    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 123;
        uint256 bal = balances[msg.sender];
        uint256 bal2 = balances[address(1)]; // 0

        balances[msg.sender] += 456; // 123 + 456 = 579

        delete balances[msg.sender]; // 0

        isFriend[msg.sender][address(this)] = true;
    }
}
