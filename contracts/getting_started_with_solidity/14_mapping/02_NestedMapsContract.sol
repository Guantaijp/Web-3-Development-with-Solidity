// SPDX-License-Identifier: MIT
//
// https://cryptomarketpool.com/how-to-create-a-map-in-a-solidity-smart-contract/

pragma solidity ^0.8.0;


// Nested mappings are mappings that contain other mappings as values, allowing for a 
// hierarchical data structure that can store complex relationships between keys and values.

contract NestedMapsContract {
    mapping(address => mapping(address => uint256)) public allowance;

    function get(address _addressOwner, address _addressSpender) public view returns (uint256) {
        return allowance[_addressOwner][_addressSpender];
    }

    function set(
        address _addressOwner,
        address _addressSpender,
        uint256 amount
    ) public {
        allowance[_addressOwner][_addressSpender] = amount;
    }

    function remove(address _addressOwner, address _addressSpender) public {
        delete allowance[_addressOwner][_addressSpender];
    }
}
