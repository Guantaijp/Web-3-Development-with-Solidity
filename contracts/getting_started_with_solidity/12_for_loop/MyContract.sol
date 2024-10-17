// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/for-loop

pragma solidity ^0.8.0;


//  for loop is a control flow statement that allows you to execute a block of code repeatedly for a specified number of iterations, 
//  using an initializer, a condition, and an increment or decrement operation.

contract MyContract {
    uint256 public loopCount;

    function doLoop(uint256 n) public {
        for (uint256 i = 0; i < n; i++) {
            loopCount += 1;
        }
    }
}
