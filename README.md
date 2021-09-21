# Dungeon-Hunt
<h1 align="center">DUNGEON HUNT</h1>

## Proposed Re-Design
![Image](https://github.com/de-Dungeon-Crawler/Dungeon-Hunt-Celo/blob/main/src/assets/Screenshot%202021-08-31%20at%207.13.03%20PM.png)


### Built With
We have used the following technologies for this project:
* [Solidity](https://docs.soliditylang.org/en/v0.8.3/) (Language for writing smart contracts of the Dapp)
* [Chainlink](https://chain.link/) (Randomness generation for NFTs)
* [Filecoin](https://filecoin.io/) (NFT storage on Filecoin/IPFS)
* [Infura](https://infura.io/) (Connect to the blockchain and communication API)
* [Metamask](https://metamask.io) (Wallet Provider)
* [IPFS](https://orbitdb.org/) (https://ipfs.io/)
* [PhaserJS](https://phaser.io/) (Phaser is a 2D game framework used for making HTML5 games for desktop and mobile)
* [ReactJS](https://reactjs.org/) (web UI)
* [OpenZeppelin Contracts](https://openzeppelin.com/contracts/) (OpenZeppelin ERC-20 and ERC-721 standards)

### Installation

Following are the instructions for running the web application locally. First navigate to `RPG-Solidity-Game/blockchain/`

1. Get a free API Key at [https://infura.io/](https://infura.io/) , and Etherscan
2. Clone the repo
   ```sh
   git clone https://github.com/de-Dungeon-Crawler/Dungeon-Hunt-Celo/
   ```
   First navigate to `Dungeon-Hunt-Celo/blockchain/`
3. First navigate to `Dungeon-Hunt-Celo/blockchain/` and then `Dungeon-Hunt-Celo/` Install NPM packages in each of these directories
   ```sh
   npm install
   yarn
   ```
4. Enter your API Key in `.env` inside 
`Dungeon-Hunt-Celo/blockchain/` folder

   ```JS
   ETHERSCAN_API_KEY="Your ETHERSCAN API KEY"
   RPC_URL="https://rinkeby.infura.io/v3/{YOUR RINKEBY API KEY}"
   MNEMONIC="Seed phrase of your metamask wallet"
   SKIP_PREFLIGHT_CHECK=true
   PRIVATE_KEY="Enter exported private key of your ethereum wallet metamask"
   ```
   
   NOTE: **NEVER SHARE YOUR API KEYS AND PRIVATE KEYS**
   
 5. Run the dapp and game application separately locally:
 First navigate to `Dungeon-Hunt-Celo/blockchain/
  ```sh
   npm start
   ```  
   This starts the dApp
 Then navigate to `Dungeon-Hunt-Celo/`
 ```sh
   npm start
 ```  
 This starts the game
