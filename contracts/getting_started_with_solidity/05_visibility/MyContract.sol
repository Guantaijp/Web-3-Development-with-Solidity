// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/visibility

pragma solidity ^0.8.0;


// visibility defines how and where functions and state variables can be accessed within a contract or by external contracts. The four visibility specifiers are:

// public: Accessible both externally and internally by the contract and other contracts.
// private: Accessible only within the contract where it is defined, not by derived contracts.
// internal: Accessible within the contract and by derived (inherited) contracts.
// external: Accessible only externally, meaning it can only be called from outside the contract.

contract MyContract {
    // Private – A private function/state variable is only available inside the contract that defines it. It is generally good practice to keep functions private.
    // Internal – A internal function/state variable is only available inside the contract that defines it AND any contracts that inherit it
    // External – An external function can only be called by external contacts.  Not visible inside the contract that defines it.
    // Public – A public function/state variable is available to any contract or third party that wants to call it. Public is the default if visibility is not specified.

    // private state variable
    string private name;
    uint256 internal age = 35;
    string public id = "123";

    // public function
    function setName(string memory newName) public {
        name = newName;
    }

    // public function
    function getName() public view returns (string memory) {
        return name;
    }

    function getAge() public view returns (uint256) {
        return privateFunction();
    }

    function privateFunction() private view returns (uint256) {
        return age;
    }

    function externalFunction() external pure returns (string memory) {
        return "external-function";
    }
}
