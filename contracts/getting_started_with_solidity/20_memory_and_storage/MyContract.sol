// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/memory-vs-storage

pragma solidity ^0.8.0;

// Storage: Permanent data storage on the blockchain for state variables, persisting between function calls and transactions.

// Memory: Temporary data storage that is erased between external function calls, used for variables that do not need to persist after execution.

contract MyContract {
    // Storage
    string firstName;
    string lastName;

    constructor(string memory _firstName, string memory _lastName) {
        firstName = _firstName;
        lastName = _lastName;
    }

    function fullname() public view returns (string memory) {
        return string(abi.encodePacked(lastName, " ", firstName));
    }
}
