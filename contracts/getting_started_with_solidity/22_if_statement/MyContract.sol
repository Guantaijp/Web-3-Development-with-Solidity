// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/how-to-write-an-if-statement-in-solidity/

pragma solidity ^0.8.0;


// if statement is a control flow structure that allows you to execute a block of 
// code conditionally based on whether a specified condition evaluates to true or false.

contract MyContract {
    string public symbol;

    function symbolNum(uint256 _symbolNum) public {
        if (_symbolNum == 1) {
            symbol = "BTC";
        } else if (_symbolNum == 2) {
            symbol = "ETH";
        } else {
            symbol = "CRAPCOIN";
        }
    }
}
