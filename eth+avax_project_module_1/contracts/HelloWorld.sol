
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

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

    function revertTest() public pure{
        if (x <= 10) {
            revert("Revert: Input must be greater than 10");
        }
    }
    

    function assertTest() public pure{
        assert(y < 100, "Input must be less than 100")
    }
}