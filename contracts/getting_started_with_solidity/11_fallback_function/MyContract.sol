// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/fallback-function

pragma solidity ^0.8.0;


// fallback function is a special function that is executed when a contract receives Ether without any data or 
// when a non-existent function is called; it is used to handle incoming Ether transactions and 
// can be defined to perform specific actions or log events in such cases.

contract MyContract {
    fallback() external payable {}
}
