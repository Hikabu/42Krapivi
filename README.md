
# 🌱 42krapivi Token (KRT)

Welcome to the **42krapivi Token (KRT)** project!  
This repository contains the smart contract for a custom ERC-20 token, written in Solidity and deployed on the Ethereum Sepolia test network.  

This README is designed for **beginners who are new to Web3, Solidity, and blockchain development**.  
If you’ve never worked with crypto before, don’t worry — we’ll take it step by step.

---

##  What Is a Token?

In blockchain, there are two main concepts you’ll often hear:

- **Coins**: Native to their own blockchain. Example:  
  - ETH (Ethereum coin) lives on the Ethereum blockchain.  
  - BTC (Bitcoin coin) lives on the Bitcoin blockchain.  

- **Tokens**: Built *on top of* an existing blockchain, usually using a smart contract.  
  - Example: USDT (Tether) is a token built on Ethereum (and other blockchains).  
  - Tokens **inherit the security and network of the underlying blockchain**, without needing to create a brand new chain.  

The **42krapivi Token (KRT)** is an **ERC-20 token**, meaning it follows Ethereum’s most widely used token standard. This ensures compatibility with **wallets, decentralized apps (dApps), and exchanges**.

---

##  Why Solidity and ERC-20?

- **Solidity** is the programming language created specifically for Ethereum and blockchain smart contracts.  
- **ERC-20** is the standard interface for fungible tokens (every token unit is the same, just like every dollar is the same).  
- This project uses Solidity because it was designed for smart contracts, unlike Rust or C++ which are general-purpose.  

---

##  Project Structure

- **Smart Contract Code** → The Solidity contract `krapivaToken.sol` (implements the ERC-20 token logic).  
- **Documentation** → This README, explaining how ERC-20 works and how the token was built.  
- **Deployment Info** → Links to the deployed token on Sepolia testnet.  

---

##  Deployment Details

- **Transaction**: [View on Etherscan](https://sepolia.etherscan.io/tx/0xb96e6d7858ce411b6731b43b75451d08b1cf258146e12afee7b873673b194e96)  
- **Token Info**: [View Token on Etherscan](https://sepolia.etherscan.io/token/0xcdfc63d099a1011e1aeab37b2b9bc819f1cbf4c2)  

---

## Essential ERC-20 Functions and Standards

ERC-20 defines a set of standard functions that make tokens interoperable with wallets, exchanges, and dApps:

- `totalSupply()` → Returns the total number of tokens in circulation.  
- `balanceOf(address owner)` → Checks the token balance of a specific wallet.  
- `transfer(address to, uint256 amount)` → Sends tokens from one user to another.  
- `approve(address spender, uint256 amount)` → Authorizes another account/contract to spend tokens on your behalf.  
- `transferFrom(address from, address to, uint256 amount)` → Transfers tokens on behalf of someone else (with approval).  
- `allowance(address owner, address spender)` → Checks how much a spender is approved to withdraw from an account.  

---

##  What the **42krapivi Token (KRT)** Can Do

Besides the standard ERC-20 functionality, the token includes extra features:

###  Burnable Token
- Token holders can destroy (burn) tokens, permanently removing them from circulation.  
- **How to burn**: Send tokens to a **burn address** (an address with no private key).  
- This process is transparent and verifiable on the blockchain.  

###  Minting Mechanism
- Allows creation of new tokens under controlled conditions.  
- **Who can mint?** Only the contract owner.  
- **Why mint?** For fundraising, community growth, or reward distribution.  

### ⏸Pausable Transfers
- The contract owner can temporarily **pause** all token transfers.  
- Useful for handling emergencies such as hacks, bugs, or unexpected vulnerabilities.  

---

