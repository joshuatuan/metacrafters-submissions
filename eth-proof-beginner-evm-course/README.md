# Project Title

Create a Token Project

## Description

This project is a simple example of creating a custom token on the Solana blockchain using Solidity.

## Getting Started

### Executing program

To execute this application, you can use Remix, an online Solidity IDE. To get started, navigate to the [Remix Website][https://remix.ethereum.org/].

Once you are on the Remix website, initiate the process by creatj g a new file. This can be done by selecting the "+" symbol found in the left-hand side panel. 
Name the newly created file and save it with a .sol extension. Next, proceed by copying and pasting the provided code:

```
pragma solidity 0.8.18;

contract MyToken { 

    // public variables here
    // name the coin anything you want
    string public tokenName = "JITCOIN";
    string public tokenAbbrv = "JTC";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value; 
        balances[_address] += _value;
    } 

    // burn function
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value; 
            balances[_address] -= _value;
        }        
    } 
}

```
To compile the code, navigate to the Solidity Compiler tab found in the sidebar on the left. Ensure that you've selected the appropriate Compiler version, such as **0.8.18** or any other compatible version. 
Afterwards, initiate the compilation process by clicking on the compile button. After successfully compiling the code, proceed to deploy the contract by accessing the Deploy & Run Transactions tab, also located in the left-hand sidebar. From the dropdown menu, choose your contract, and then initiate the deployment by clicking the Deploy button. 

Once the contract deployment is complete, you can begin interacting with it. To do so, navigate to your contract in the left-hand sidebar, you will find options to interact with the burn and mint functions. Simply click the function you wish to execute, provide the parameters, and call the state variables (totalSupply and balances) to see the changes."


## Author

Joshua Miguel Tuan

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
