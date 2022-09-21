// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LocalVariables {
    uint public i;
    bool public b;
    address public myAddress;

    function doSomething() external {
        uint x = 456;
        bool f = false;
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);
    }
}