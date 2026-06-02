# OPN Yield Vault

A shares-based smart contract for deposit and yield management on the OPN Testnet.

## Description
This project implements a transparent vault mechanism where users can deposit assets and earn yield. Every interaction, including deposits and yield injections, is recorded on-chain, ensuring complete transparency and verifiability.

## Contract Information
- **Contract Address:** `0x3DcD261Df4e5905b3731A17281456AD6781F161f`

## How to Test (No Coding Required)
To interact with this contract, you can use [Remix IDE](https://remix.ethereum.org/):
1. Copy the source code from `YieldVault.sol` in this repository to Remix IDE.
2. Compile the code.
3. In the "Deploy & Run" tab, select **"Injected Provider - MetaMask"**.
4. Paste the contract address above into the **"At Address"** field and click "At Address".
5. You can now directly execute `deposit`, `withdraw`, or `addYield` functions through the browser interface.

## Proof of Activity (Transaction Hashes)
- **Deposit Tx:** `0xbc9d43c105183a8b4ae2c56bd3aec9a20496c9e785b3f51a77aa29f07fd84a64`
- **Add Yield Tx:** `0x29c539ea0c62762c8d7a98e54aeb5de3bca5ee5853df35a407f280ae9dadfdca`
- 
