// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract TestSmartContract{
  uint myVariable;

  function set(uint x) public {
    myVariable = x;
  }

  function get() constant public returns (uint) {
    return myVariable;
  }
}