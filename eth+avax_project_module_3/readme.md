# Project Title
Create and Mint Token

## Description
This project showcases how to create your own ERC20 token with mint, transfer , and burn functionalities using remix
## Getting Started


### Executing program
To execute this application, you can use Remix, an online Solidity IDE. To get started, navigate to the [Remix Website](https://remix.ethereum.org/).

Once you are on the Remix website, initiate the process by creating a new file. This can be done by selecting the "+" symbol found in the left-hand side panel. 
Name the newly created file and save it with a .sol extension. Next, proceed by copying and pasting the provided code:

*solidity
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract JTC is ERC20 {
   address public owner;

   constructor(uint256 initialSupply) ERC20("Jitcoin", "JTC") { //parent class' parameters
       _mint(msg.sender, initialSupply * 10 ** uint(decimals()));
       owner = msg.sender;
   }



   function mint(address to, uint256 amount) public {
       require(msg.sender == owner, "Only the contract owner can mint tokens");
       _mint(to, amount);
   }

   function burn(uint256 amount) public {
       _burn(msg.sender, amount);
   }
}
```

To compile the code, navigate to the Solidity Compiler tab found in the sidebar on the left. Ensure that you've selected the appropriate Compiler version. For this project, select **0.8.0** or higher. 
Afterwards, initiate the compilation process by clicking on the compile button. After successfully compiling the code, proceed to deploy the contract by accessing the Deploy & Run Transactions tab, also located in the left-hand sidebar. From the dropdown menu, choose your contract, and then initiate the deployment by clicking the Deploy button. 

Once the contract deployment is complete, you can begin interacting with it. To do so, navigate to your contract in the left-hand sidebar, you will find options to interact with the burn, transfer and mint functions. Simply click the function you wish to execute, provide the parameters, and call the state variables to see the changes."


## Author

Joshua Miguel Tuan

## License

This project is licensed under the MIT License - see the LICENSE file for details


