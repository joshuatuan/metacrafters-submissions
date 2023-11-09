
// SPDX-License-Identifier: MIT

/* 
ETH + AVAX PROOF: Intermediate EVM Course 
Functions and Errors Project

Project requirements:
write a smart contract that implements the require(), assert() and revert() statements.
*/

pragma solidity ^0.8.18;


contract HelloWorld {
    string public greet = "Hello World!";
    address public owner; 

    constructor(){
        owner = msg.sender;
    }

    function setGreeting(string memory greeting) public {
        require(msg.sender == owner, "Only the owner can access this function");
        require(bytes(greeting).length > 0, "Greeting should not be empty");
        greet = greeting;
    }

    function revertTest(uint256 x) public pure{
        if (x <= 10) {
            revert("Revert: Input must be greater than 10");
        }
    }
    
    function assertTest() public pure{
        assert(1 == 2); // always triggers an assert and revert the transaction.
    }
}