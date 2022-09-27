// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// libraries are similar to the js methods(in my opinion)
// But libraries are custom methods(like npm packages)

library Math {
    // internal functions
    // embedded to contract
    function max(uint256 x, uint256 y) internal pure returns (uint256) {
        return x >= y ? x : y;
    }
}

contract Test {
    function testMax(uint256 x, uint256 y) external pure returns (uint256) {
        return Math.max(x, y);
    }
}

library ArrayLib {
    // finds given number is in the array or not.
    function find(uint256[] storage arr, uint256 x)
        internal
        view
        returns (uint256)
    {
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        // reverts function and saves gas
        // if given number is not in the array
        revert("not found");
    }
}

// library functions with state variables
contract TestArray {
    // we declared ArrayLib for uint arrays
    // now we can use method without calling the library
    using ArrayLib for uint256[];
    uint256[] public arr = [3, 2, 1];

    function testFind() external view returns (uint256) {
        // return ArrayLib.find(arr, 1);
        return arr.find(1);
    }
}
