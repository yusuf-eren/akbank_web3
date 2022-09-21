// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Function modifier - reuse code before and / or after function
// Basic, inputs, sandwich

contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }
    
    // modifier like a middleware
    // can be used for multiple function
    modifier whenNotPaused() {
        // if paused == false continue
        // if paused != false message "paused"
        require(paused == false, "paused");
        _;
    }

    function inc() external whenNotPaused {
        count += 1;
    }
    
    function dec() external whenNotPaused {
        count -= 1;
    }

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        // '_' means execute rest of the code
        _;
    }
    // 2 modifier on a function
    // it looks like a middleware
    function incBy (uint _x) external whenNotPaused cap(_x) {
        count += _x;
    }

    modifier sandwich() {
        count += 10;
        // calls main function;
        _;
        // code stops here and
        // continues after the main function
        count *= 2;
        
        _; // count +1
        _; // count +1
    }

    function foo() external sandwich {
        count += 1;
    }
}