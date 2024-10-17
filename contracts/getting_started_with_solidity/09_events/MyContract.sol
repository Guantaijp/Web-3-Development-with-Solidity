// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/events

pragma solidity ^0.8.0;


// events are logging mechanisms that allow contracts to emit information to the blockchain, 
// enabling external applications (like dApps) to listen for specific occurrences and react accordingly.
//  Events are defined in the contract and can be emitted using the emit keyword, 
//  which helps in tracking state changes or important actions within the contract.


contract MyContract {
    string private name;

    event nameEvent(string newName);

    function setName(string memory newName) public {
        name = newName;
        emit nameEvent(newName);
    }
}
