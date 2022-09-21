// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunctions {
    uint public num;

    function viewFunc() external view returns (uint) {
        return num;
    }
    function pureFunc() external pure returns (uint) {
        return 1;
    }

    // this is a view function because it takes a state variable
    // - (uint public num) -
    function addToNum(uint x) external view returns (uint) {
        return num + x;
    }
    // this is a pure function because it doesn't take any state variable
    // - (uint public num) -
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}