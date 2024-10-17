// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/libraries-in-solidity/

pragma solidity ^0.8.0;

//  libraries are special types of contracts that contain reusable code and can be deployed only once, 
//  allowing developers to utilize their functions without needing to instantiate the library as a contract, 
//  promoting code reusability and modularity.

library MathLibrary {
    function multiply(uint256 a, uint256 b) public view returns (uint256, address) {
        return (a * b, address(this));
    }
}
