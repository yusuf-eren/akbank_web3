// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 21442 gas
contract Constants {
    // state variables as constants
    address public constant MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MY_UINT = 123;
}

// 23553 gas
contract Var {
    address public MY_ADDRESS = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;

}