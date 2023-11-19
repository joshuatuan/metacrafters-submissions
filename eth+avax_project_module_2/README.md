# Project Title

Project: Function Frontend

## Description
This project demonstrates the integration of Solidity and React.js for the frontend, with deployment using Hardhat.

## Getting Started

### Executing program
Metacrafters have streamlined the setup process with a ready-to-use Hardhat environment. Follow these steps to quickly showcase and test the app using the provided [Gitpod link](https://gitpod.io/new/#https://github.com/MetacrafterChris/SCM-Starter):

1. Once in Gitpod, navigate to the generated files and folders by Hardhat.
2. Locate the smart contract at `contracts > Assesment.sol` and paste it into the same file in the Gitpod environment.
3. Similarly, find the React.js file at `pages > index.js` in the GitHub repository, and paste it in the corresponding location in Gitpod.

To compile the code:

- Inside the project directory, run `npm i` in the terminal to install prerequisites.
- Open two additional terminals in your VS Code.
- In the second terminal, type `npx hardhat node`.
- In the third terminal, type `npx hardhat run --network localhost scripts/deploy.js`.
- Back in the first terminal, type `npm run dev` to launch the front-end.

Assuming you already have MetaMask, manually add the network:

- Go to MetaMask settings > Networks > Add Network.
- Input the following parameters:
  - Network name: Your preferred network name.
  - RPC URL: Acquire this under Gitpod ports, look for port 8545, and copy the URL.
  - Chain ID: 31337
  - Currency Symbol: ETH

Save the settings and switch to the newly added network. Now connected to the network, you can link your wallet to the smart contract and test the application's functionalities.

## Author

Joshua Miguel Tuan

## License

This project is licensed under the MIT License - see the LICENSE file for details.
