# Project Title

Functions and Errors Project 

## Description

This project is a simple example focuses on demonstrating error handlers using Solidity.

## Getting Started

### Executing program

To execute this application, you can use Remix, an online Solidity IDE. To get started, navigate to the [Remix Website](https://remix.ethereum.org/).

Once you are on the Remix website, initiate the process by creating a new file. This can be done by selecting the "+" symbol found in the left-hand side panel. 
Name the newly created file and save it with a .sol extension. Next, proceed by copying and pasting the provided code:

```solidity
// SPDX-License-Identifier: MIT

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
```

To compile the code, navigate to the Solidity Compiler tab found in the sidebar on the left. Ensure that you've selected the appropriate Compiler version, such as **0.8.18** or any other compatible version. 
Afterwards, initiate the compilation process by clicking on the compile button. After successfully compiling the code, proceed to deploy the contract by accessing the Deploy & Run Transactions tab, also located in the left-hand sidebar. From the dropdown menu, choose your contract, and then initiate the deployment by clicking the Deploy button. 

Once the contract deployment is complete, you can begin interacting with it. To do so, navigate to your contract in the left-hand sidebar, you will find options to interact with the burn and mint functions. Simply click the function you wish to execute, provide the parameters, and call the state variables to see the changes."


## Author

Joshua Miguel Tuan

## License

This project is licensed under the MIT License - see the LICENSE file for details
