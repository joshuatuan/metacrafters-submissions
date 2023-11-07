
# Project Title
Functions and Errors Project

## Description
This project in the end of the module 1 ETH + Avax focuses on writing a smart contract that implements the require(), assert() and revert() statements.

## Getting Started

### Gitpod Workspace

This is the convinient way of running this program since the workspace has already been set up by Metacrafters and you just need to install truffle.
To get started, navigate to the [Gitpod Workspace](https://gitpod.io/new/#https://github.com/jeffryan-POL/solidity_starter)



### Executing the program locally

To execute the program locally you need to install the prequisites first

1. Install [Visual Studio Code](https://code.visualstudio.com/)

2. Install [Node.js](https://nodejs.org)

3. Open the terminal in Visual Studio Code and install Truffle by typing:

   ```bash
   npm install -g truffle
   ```
   

## Executing the program

### 1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```
   *Optional:* This step is not necessary if you're using the Gitpod Workspace, as it has already been initialized.
  
     
After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

### 2. The solidity contract

This is the solidity contact, with the file name, "HelloWorld.sol" inside of the `contracts` folder which contains the following code that satisfies the requirements of the project:
Copy the source code and paste it in your solidity file.
   ```solidity
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
	
	    function revertTest(uint256 x) public pure{
	        if (x <= 10) {
	            revert("Revert: Input must be greater than 10");
	        }
	    }
	    
	
	    function assertTest(uint256 y) public pure{
	        assert(1 == 2); // always triggers an assert and revert the transaction.
	    }
	}
   ```

### 3. Preparing the migration

"2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var HelloWorld = artifacts.require("HelloWorld");
   module.exports = function(deployer) {
     deployer.deploy(HelloWorld);
   }
   ```

### 4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

  
### 5. Testing the contract

   In the interactive Truffle console, run the following commands to test out the functions and call out variables:

   ```javascript
   let instance = await HelloWorld.deployed()
   ```
   ```javascript
   instance.greet()
   ```
   ```javascript
   instance.setGreet("greetings")
   ```
   ```javascript
   instance.revertTest()
   ```
   ```javascript
   instance.assertTest()
   ```
      
