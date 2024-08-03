# Auction Smart Contract

This repository contains a Solidity smart contract for a simple auction system. The contract allows users to place bids, and the highest bidder wins the auction when it ends.

## Contract Overview

The `Auction` contract includes the following features:
- Users can place bids that must be higher than the current highest bid.
- The owner can end the auction and declare the highest bidder as the winner.
- Events are emitted to notify when a new bid is placed and when the auction ends.

## Usage

### Deploying the Contract

1. Compile the contract using Remix IDE.
2. Deploy the contract using the JavaScript VM environment in Remix.

### Placing a Bid

1. Select an account in Remix.
2. Set the bid amount and value.
3. Call the `bid` function to place a bid.

### Ending the Auction

1. Switch back to the owner's account in Remix.
2. Call the `endAuction` function to end the auction and announce the winner.

## Author

Marx Lizardo  
[LinkedIn](https://www.linkedin.com/in/marxjbl/) 
