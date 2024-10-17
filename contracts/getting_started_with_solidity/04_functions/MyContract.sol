// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/functions

pragma solidity ^0.8.0;


//  function is a block of reusable code that performs specific tasks or computations and 
//can be called internally or externally within the contract.

contract MyContract {
    string private name;

    //Functions that create transaction on block chain
    function setName(string memory newName) public {
        name = newName;
    }

    //Functions that do not create transaction on block chain (view and pure)
    function getName() public view returns (string memory) {
        return name;
    }
}
