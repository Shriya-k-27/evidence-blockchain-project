# Decentralized Evidence Management System

## 📌 Project Overview
This project is a blockchain-based system that ensures digital evidence cannot be tampered with. It stores a cryptographic hash of evidence files on the blockchain so anyone can verify their authenticity.

---

## 🎯 Objective
To create a secure and decentralized system where:
- Evidence cannot be altered after submission
- Anyone can verify the integrity of a file
- No central authority is required

---

## ⚙️ How It Works
1. A file is uploaded
2. The file is converted into a hash (digital fingerprint)
3. The hash is stored on the blockchain
4. To verify:
   - The file is hashed again
   - Compared with stored hash
   - If they match → file is authentic

---

## 🔧 Smart Contract Functions

### submitEvidence()
Stores the hash, IPFS CID, and evidence type on blockchain.

### verifyEvidence()
Checks if a hash exists on blockchain.

### getEvidence()
Returns stored details like timestamp and submitter.

---

## 🛠 Tech Stack
- Solidity (Smart Contract)
- Remix IDE
- MetaMask
- Polygon Testnet (planned)
- IPFS (for file storage)

---

## 📂 Project Structure
contracts/
  EvidenceRegistry.sol
abi/
  abi.json

---

## 🚧 Current Status
- Smart contract created and tested on Remix VM
- Deployment to public testnet pending (due to faucet limitations)

---

## 🧠 Key Concept
This system does NOT prove truth.
It proves:
- Integrity (file not changed)
- Timestamp (when it existed)
- Provenance (who submitted it)

---

## 👩‍💻 Author
Shriya (Blockchain Developer)
