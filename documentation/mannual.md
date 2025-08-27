## 1. Project Overview

This project implements an ERC-20 token called **42krapivi (KRT)** using [OpenZeppelin](https://docs.openzeppelin.com/contracts/).
It follows the requirements of the 42 tokenizer project and demonstrates:

* ✅ ERC-20 standard compliance
* ✅ Minting new tokens (only owner)
* ✅ Burning tokens
* ✅ Pausing/unpausing transfers
* ✅ Ownership & access control

The token can be deployed to any EVM-compatible chain (Ethereum, Sepolia, Hardhat, etc.).

---

## 2. Token Specifications

* **Name:** 42krapivi
* **Symbol:** KRT
* **Decimals:** 18
* **Total Supply (initial):** 1,000,000 KRT (minted at deployment)
* **Owner:** deployer account (can mint, pause, unpause)

---

## 3. Contract Functions

### Standard ERC-20

* `transfer(address to, uint256 amount)` – send tokens
* `approve(address spender, uint256 amount)` – approve allowance
* `transferFrom(address from, address to, uint256 amount)` – transfer using allowance
* `balanceOf(address account)` – check balance

### Extensions

* `mint(address to, uint256 amount)` – create new tokens (onlyOwner)
* `burn(uint256 amount)` – destroy own tokens
* `pause()` – stop transfers (onlyOwner)
* `unpause()` – resume transfers (onlyOwner)

---

## 4. Deployment

1. Open [Remix IDE](https://remix.ethereum.org/)
2. Create a new Solidity file `KrapivaToken.sol`
3. Paste the contract code from `contracts/`
4. Compile with Solidity `^0.8.24`
5. Deploy on your preferred environment:

   * **Remix + MetaMask** (Sepolia testnet recommended)
   * or **Hardhat/Foundry** if running scripts

The constructor will automatically mint **1,000,000 KRT** to the deployer’s address.

---

## 5. Usage Examples

### Transfer tokens

```
transfer("0xRecipientAddress", 100 * 10**18)
```

### Approve spender

```
approve("0xSpender", 500 * 10**18)
```

### Mint new tokens

```
mint("0xRecipient", 2000 * 10**18)   // onlyOwner
```

### Pause & unpause

```
pause()     // stops transfers
unpause()   // resumes transfers
```

---


## 6. Notes

* This token is **not automatically listed on Uniswap**.
* To make it tradable, liquidity must be added separately (not required for this project).
* Gas fees are required when deploying on public networks.

---

