// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract HelloWorld {
    string public greet = "Hello World!";
    address public owner; 

    constructor(){
        owner = msg.sender;
    }

    function setGreeting(string memory _greeting) public {
        require(msg.sender == owner, "Only the owner can access this function");
        require(bytes(_greeting).length > 0, "Greeting should not be empty");
        greet = _greeting;
    }

    function isOwner() public view returns (bool _isOwner){
        if (msg.sender != owner){
             _isOwner = false;
            revert("Only the owner can access this function");
        }
        else{
            _isOwner = true;
        }
        return _isOwner;
    }

    function mathOperation(uint256 a, uint256 b) external pure returns (uint256 result) {
        // Ensure that a + b is always greater than 100
        assert((a + b) > 100);

        
        // The function will only reach this point if the assert condition is satisfied
        result = a + b;
        return result;
    }
}
