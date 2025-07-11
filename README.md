# Simple Token Transfer Contract (Clarity)

This repository contains a minimalistic implementation of a fungible token contract written in [Clarity](https://docs.stacks.co/docs/write-smart-contracts/clarity-overview/), the smart contract language for the Stacks blockchain.

## 📦 Token Details

- **Name**: MyToken
- **Symbol**: MTK
- **Decimals**: 6
- **Initial Supply**: 1,000,000 MTK (allocated upon initialization)

## ✨ Features

- Initialization function to assign the total supply to a specified recipient.
- Basic `transfer` function to move tokens between accounts.
- Read-only `get-balance` function to check token balances.
  
## 🚀 Getting Started

To deploy and interact with this contract:

    Clone the repository.

    Use Clarinet to test locally:

    clarinet check
    clarinet test

    Deploy the contract to a Stacks testnet or mainnet.

## 🛡 License

This project is open-source and available under the MIT License.
