// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionIntro {
    // pure is view only.
    function add(uint x, uint y) external pure returns(uint) {
        return x + y;
    }

    function sub(uint x, uint y) external pure returns(uint) {
        return x - y;
    }
}