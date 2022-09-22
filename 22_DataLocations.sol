// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Data locations - storage, memory and calldata

// storage means the variable is a `state` variable
// memory means the data is loaded onto memory
// calldata is like memory except it can only be used for function inputs
contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    // mapping to MyStruct type
    mapping(address => MyStruct) public myStructs;

    function examples(uint[] calldata y, string calldata s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "this is a text";

        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 856;

        _internal(y);

        // we can not declare dynamic array for memory variable
        // we should define length of the array
        uint[] memory memArr = new uint[](3);
        memArr[1] = 234;
        return memArr;
    }

    // calldata is not modifiable
    // it takes y from the input and passes it into
    // the internal function without copying it
    // so that is how it saves gas :)

    // memory is copies each element in the uint array
    // and creating a new uint array inside the memory and
    // pass it onto here
    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }

    // my custom function to check strcut by address
    function getArray(address owner) external view returns(MyStruct memory){
        return myStructs[owner];
    }
}