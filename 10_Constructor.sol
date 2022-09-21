// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner;
    uint public x;
    
    constructor(uint _x_1) {
        owner = msg.sender;
        x = _x_1;
    }
}