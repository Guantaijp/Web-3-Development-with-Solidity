// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/error-handling

pragma solidity ^0.8.0;


// require(condition, message): Validates a condition and throws an error with a custom message if the condition is false.

// assert(condition): Checks for internal errors and invariants, triggering an exception and reverting changes if the condition is false.

// revert(message): Stops execution and reverts state changes with an optional custom error message.

contract MyContract {
    // Assert – is used to check for conditions that should never be possible.  Asserts should always evaluate to true and should never fail.  If it does fail then there is a bug in the code and the assert will use up all gas and the transaction will be rolled back.
    // Require – Is used to evaluate inputs, preconditions and outputs of functions.  If not true solidity with throw an error and fail.  The require statement will accept an optional error message.  If there is a failure it will NOT use up all gas.
    // Revert – Is similar to require but only takes one argument which is the error message.  Revert might be better to use when the condition to check is complex.
    uint256 public balance;

    function deposit(uint256 amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + amount;
        require(newBalance >= oldBalance, "Overflow");

        balance += amount;
        assert(balance >= amount);

        if (balance < amount) {
            revert("underflow");
        }
    }
}
