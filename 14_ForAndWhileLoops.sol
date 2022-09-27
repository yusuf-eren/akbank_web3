// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract forAndWhileLoops {
    function loops() external pure {
        for (uint256 i = 0; i < 10; i++) {
            // code
            if (i == 3) {
                continue;
            }
            // more code
            if (i == 5) {
                break;
            }
        }

        uint256 j = 0;
        while (j < 10) {
            // code
            j++;
        }
    }

    function sum(uint256 _n) external pure returns (uint256) {
        uint256 sum1;
        for (uint256 i = 0; i <= _n; i++) {
            sum1 += i;
        }
        return sum1;
    }
}
