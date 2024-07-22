// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {

    // State variable to store the owner's address
    address public owner;

    // State variable to store a value
    uint256 public value;

    // Constructor to set the owner of the contract
    constructor() {
        owner = msg.sender;
    }

    // Function to set a value with require statement
    function setValue(uint256 _value) public {
        // Ensure the sender is the owner
        require(msg.sender == owner, "Caller is not the owner");
        value = _value;
    }

    // Function to divide two numbers with assert statement
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        // Ensure denominator is not zero
        assert(b != 0);
        return a / b;
    }

    // Function to revert the transaction based on condition
    function revertExample(uint256 _value) public pure {
        // Revert if value is less than 100
        if (_value < 100) {
            revert("Value must be at least 100");
        }
    }
}
