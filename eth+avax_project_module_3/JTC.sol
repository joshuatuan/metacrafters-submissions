// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract JTC is ERC20 {
   address public owner;

   constructor(uint256 initialSupply) ERC20("Jitcoin", "JTC") { //parent class' parameters
       _mint(msg.sender, initialSupply * 10 ** uint(decimals()));
       owner = msg.sender;
   }

   //wrappers. passes parameters to the abstract class / parent

   function mint(address to, uint256 amount) public {
       require(msg.sender == owner, "Only the contract owner can mint tokens");
       _mint(to, amount);
   }

   function burn(uint256 amount) public {
       _burn(msg.sender, amount);
   }
}


