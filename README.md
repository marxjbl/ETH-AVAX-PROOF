# Smart Contract (Project Update)

This repository contains an updated version of the MyToken project originally implemented in a Solidity smart contract. The contract showcases token creation, minting, and burning functionalities on the Ethereum blockchain.

For the original project and more details, please visit [ETH Proof Beginner Repository](https://github.com/marxjbl/ETH-Proof-Beginner).

## Features

- **Token Creation:** Easily create a new token with customizable details such as name and abbreviation.
- **Token Minting:** Increase the total supply of tokens and allocate them to specific addresses using the `mint` function.
- **Token Burning:** Decrease the total supply of tokens and reduce balances from specific addresses using the `burn` function. Includes `require()`, `assert()`, and `revert()` statements to ensure operations are executed under valid conditions and maintain internal consistency.
- **Balance Tracking:** Utilize a mapping to maintain and query token balances for individual addresses. Ensure accurate balance updates during minting and burning operations.

## Requirements

- Solidity `0.8.26`
- An Ethereum development environment (e.g., [Remix](https://remix.ethereum.org/), [Truffle](https://archive.trufflesuite.com/))

## Usage

1. **Deploying the Contract:**
   - Deploy the `MyToken` contract on a local development blockchain or Ethereum test network.
  
2. **Interacting with the Contract:**
   - Use Ethereum tools like Remix or development frameworks like Truffle to interact with deployed contracts.
   - Call the `mint` function to increase token supply and allocate tokens to addresses.
   - Call the `burn` function to reduce token supply and adjust balances, ensuring sufficient balances and total supply before execution.
  
3. **Testing and Debugging:**
   - Write and execute tests to verify contract functionality, including scenarios for minting and burning tokens.
   - Debug potential issues related to token balances and total supply adjustments.

## Author

Marx Lizardo  
[LinkedIn](https://www.linkedin.com/in/marxjbl/) 
