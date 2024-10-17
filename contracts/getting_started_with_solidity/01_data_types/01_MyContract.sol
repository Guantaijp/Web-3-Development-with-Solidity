// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/data-types-in-solidity-smart-contracts/

pragma solidity ^0.8.0;


// Value Types
// bool: Stores true or false values.
// int: Stores signed integers (positive and negative numbers).
// uint: Stores unsigned integers (only non-negative numbers).
// fixed/ufixed: Reserved for fixed-point numbers, not yet fully supported.
// address: Holds an Ethereum address (160 bits), and payable allows sending/receiving Ether.
// enum: Defines a custom type with a limited set of constant values.
// bytes: A fixed or dynamic array of bytes, useful for raw data.

// Reference Types
// array: A list of elements, either of fixed or dynamic size.
// string: Stores UTF-8 encoded text, essentially a dynamic array of bytes.
// mapping: A key-value store, similar to a hash table.
// struct: Custom complex types grouping multiple variables together.

// Special Types
// function: Allows storing and passing functions as arguments.

// Data Location
// storage: Permanent storage on the blockchain.
// memory: Temporary storage during function execution.
// calldata: Temporary, read-only storage for function arguments.


contract MyContract {
    string public myString = "hello";
    bytes32 public myBytes32 = "hello";
    int256 public myInt = 1;
    uint256 public myUint = 2;
    uint256 public myUint256 = 3;
    uint8 public myUint8 = 4;
    address public myAddress = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

    //function with local variable are stored in memory.
    //variables within functions have a declared data type
    function getValue() public pure returns (uint256) {
        uint256 value = 6;
        return value;
    }
}
