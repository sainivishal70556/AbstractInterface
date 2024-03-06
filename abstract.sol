// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Abstract contract
abstract contract MyAbstractContract {
    function abstractFunction(uint256 _value) external virtual;
}

// Interface
interface MyInterface {
    function interfaceFunction(uint256 _value) external;
}

// Contract implementing both the abstract contract and the interface
contract MyContract is MyAbstractContract, MyInterface {
    uint256 public storedValue;

    // Implementing the abstract function from the abstract contract
    function abstractFunction(uint256 _value) external override {
        storedValue = _value;
    }

    // Implementing the function from the interface
    function interfaceFunction(uint256 _value) external override {
        storedValue = _value * 2; // Just an example implementation
    }
}
