# Token Smart Contract and Connecting Local Hardhat with Remix

This repository contains a simple Ethereum token contract implemented in Solidity.The Token contract is a basic implementation of an ERC-20 compatible token. It allows the creation of a custom token with a specified name, symbol, and initial supply. 

## Steps and Commands 

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/token-smart-contract.git

2. Install the project dependencies:

   ```bash
   cd token-smart-contract
   npm install
3. Set up the Hardhat network:

Modify the Hardhat configuration file `hardhat.config.js` according to your specific requirements.

4. Compile the smart contract:

   ```bash
   npx hardhat compile

   npx hardhat compile runs the built-in compile task.

5. Deploy the contract:

   ```bash
   npx hardhat run scripts/deploy.js --network localhost


The command npx hardhat run scripts/deploy.js --network localhost is used to execute a deployment script in the Hardhat development environment

## Requirements 
1. Token Contract: Implement a token contract in Solidity.

The contract should be compatible with the ERC-20 standard.
The contract should have a name and symbol for the token.
The contract should track the totalSupply of the token.
The contract should have a balanceOf mapping to store the token balances of addresses.
The contract should have a constructor to initialize the token with a given name, symbol, and initial supply.

2. Deployment: Deploy the token contract.

Set up a deployment script to deploy the token contract with the desired constructor arguments.
Ensure the contract is deployed to a desired network, such as a local Hardhat network.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
