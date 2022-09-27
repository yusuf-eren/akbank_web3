// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse {
    function example(uint256 _x) external pure returns (uint256) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else if (_x == 20) {
            return 3;
        } else {
            return 4;
        }
    }

    function ternary(uint256 _x) external pure returns (uint256) {
        //     if(_x < 10) {
        //         return 1;
        //     }
        //     return 2;
        return _x < 10 ? 1 : 2;
    }
}
