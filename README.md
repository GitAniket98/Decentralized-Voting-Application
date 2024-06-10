# Decentralized Voting DApp

A decentralized voting application leveraging blockchain technology for secure, transparent, and tamper-proof voting. This project is developed using Hardhat for smart contract deployment and testing, and is deployed on the Sepolia testnet.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Smart Contract](#smart-contract)
- [Deployment](#deployment)
- [Interacting with the Smart Contract](#interacting-with-the-smart-contract)
- [License](#license)

## Introduction

This decentralized voting application allows the deployer to create proposals and enables registered voters to vote on these proposals. The application ensures transparency and security by utilizing blockchain technology.

## Features

- Create multiple proposals
- Register voters
- Vote on proposals
- Retrieve winning proposal
- View proposal details

## Prerequisites

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/) or [yarn](https://yarnpkg.com/)
- [Hardhat](https://hardhat.org/)
- [Metamask](https://metamask.io/)
- An Infura project ID (for Sepolia network connection)
- A private key for deploying and interacting with the smart contract

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/voting-dapp.git
   cd voting-dapp

   ```

2. Install dependencies :

   ```bash
   npm install
    # or
    yarn install

   ```

3. Create a .env file in the root directory and add the following environment variables:

   ```bash
   INFURA_PROJECT_ID=your_infura_project_id
   PRIVATE_KEY=your_private_key


   ```
