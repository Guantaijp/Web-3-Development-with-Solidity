// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/variables-in-solidity-smart-contracts/

pragma solidity ^0.8.0;

// State Variables: Permanently stored on the blockchain and defined outside functions.
// Local Variables: Temporary variables defined within functions, not stored on the blockchain.
// Global Variables: Special variables providing blockchain-specific data like msg.sender or block.timestamp.

contract SampleContract {
    //state variable of data type unint declared called "storedData"
    //Data in this variable will be saved to the block chain
    uint256 public storedData;

    function getResult() public pure returns (uint256) {
        //local variable
        uint256 a = 7;
        //local variable
        uint256 b = 3;
        uint256 result = a + b;
        //access the local variable
        return result;
    }

    function getSenderOfTransaction() public view returns (address) {
        //access global variables
        return msg.sender;
    }

    function getChainId() public view returns (uint256) {
        //access global variables
        return block.chainid;
    }
}
