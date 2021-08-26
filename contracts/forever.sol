// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
/**
 * @title Recorder — record a message into the blockchain
 * @author Life on Mars — https://lifeonmars.pt
 */
contract Recorder{
  event Record(
    address _from,
    string _message
  );
   /**
     * @notice Sends the contract a message
     * to record into the blockchain
     * @param message  message to record
     */
    function record(string memory message) public {
      emit Record(msg.sender, message);
    }
  }