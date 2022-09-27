// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IterableMapping {
    mapping(address => uint256) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint256 _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function getSize() external view returns (uint256) {
        return keys.length;
    }

    function first() external view returns (uint256) {
        return balances[keys[0]];
    }

    function last() external view returns (uint256) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint256 _i) external view returns (uint256) {
        return balances[keys[_i]];
    }
}

contract Mapping {
    mapping(address => bool) public registered;
    mapping(address => int256) public favNums;

    function register(int256 _favNum) public {
        // error message
        require(!registered[msg.sender], "Kullaniciniz daha once kayit yapti.");
        registered[msg.sender] = true;
        favNums[msg.sender] = _favNum;
    }
}
