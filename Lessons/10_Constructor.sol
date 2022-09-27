// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint256 public x;

    constructor(uint256 _x_1) {
        owner = msg.sender;
        x = _x_1;
    }
}
