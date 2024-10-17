// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/payable-functions

pragma solidity ^0.8.0;

// In Solidity, the payable modifier is used to indicate that a function or address can receive Ether. 
// Functions marked as payable are the only ones that can process and receive Ether directly in a transaction.
// It’s commonly used for functions that require a payment or deposit of Ether.

contract MyContract {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function withdraw(uint256 amount) public onlyOwner {
        owner.transfer(amount);
    }

    function transfer(address payable _to, uint256 amount) public onlyOwner {
        _to.transfer(amount);
    }
}
