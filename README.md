# Smart Contract Project

This project demonstrates a simple Solidity smart contract implementing `require()`, `assert()`, and `revert()` statements. The contract allows users to deposit and withdraw Ether, and includes basic checks to ensure the contract operates correctly.

## Features

- Deposit Ether into the contract
- Withdraw Ether from the contract (only owner)
- Assert balance integrity
- Trigger a custom revert message

## Requirements

- Solidity ^0.8.0
- An Ethereum development environment (e.g., Remix, Truffle)

## Usage

1. **Deploy the Contract:**
   Deploy the contract to an Ethereum network using Remix or another development tool.

2. **Deposit Ether:**
   Call the `deposit()` function and send Ether to the contract.

3. **Withdraw Ether:**
   Call the `withdraw(uint256 amount)` function (only the owner can withdraw).

4. **Check Balance:**
   Call the `checkBalance()` function to verify the balance integrity.

5. **Trigger Revert:**
   Call the `triggerRevert()` function to trigger a custom revert message.

## Code Walk-through

For a detailed explanation of the code and its functionality, watch the [code walk-through video](https://loom.com).

## Author

Marx Lizardo  
[GitHub](https://github.com/marxjbl)  
[LinkedIn](https://www.linkedin.com/in/marxjbl/) 

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
