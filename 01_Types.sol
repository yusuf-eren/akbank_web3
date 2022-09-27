// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data types - values and references
contract Data {
    bool public b = true;
    uint256 public u = 123;
    // uint = uint256 0 to 2**256 - 1
    // uint8   0 to 2**8 - 1
    // uint16  0 to 2**16 - 1
    int256 public i = -123;
    // uint256  0 to 2**255 - 1
    // int128   0 to 2**127 - 1
    int256 public minInt = type(int256).min;
    int256 public maxInt = type(int256).max;
    address public addr = 0x55636F5FdF47ee780bF46474D570D496D6F6d405;
    bytes32 public b32 =
        0x626c756500000000000000000000000000000000000000000000000000000000;
}
