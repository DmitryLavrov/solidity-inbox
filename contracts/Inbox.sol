// SPDX-License-Identifier: MIT
pragma solidity <0.9;

contract Inbox {
    string public message;
    mapping(address => bool) public approvers;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function setApprover(address user) public {
        approvers[user] = true;
    }
}
