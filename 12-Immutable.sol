// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Immutable {

    // State variables can be declared as constant or immutable.
    // In both cases, the variables
    // cannot be modified after the contract has been constructed.
    // a) For constant variables, the value has to be fixed at compile-time
    // b) For immutable, value can be assigned at construction time.
    address public immutable owner = msg.sender;

    // constructor() {
    //     owner = msg.sender;
    // }

    uint public x;
    function fiuuu() external {
        require(msg.sender == owner);
        x += 1;
    }
}