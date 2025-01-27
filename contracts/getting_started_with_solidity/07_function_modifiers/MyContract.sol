// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/function-modifiers

pragma solidity ^0.8.0;

 //function modifiers are special constructs that allow you to modify the behavior of functions, enabling conditions,
 // access control, or code reuse before or after function execution

contract MyContract {
    address public owner;
    string private name;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setName(string memory newName) public onlyOwner {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
