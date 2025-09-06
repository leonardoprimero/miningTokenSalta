# Salta Mining Token (SMT)

A complete repository for  **tokenization of the mining process in Salta** , built with Solidity and Hardhat. The contract implements an ERC-20 token with a  **fixed supply of 500,000,000 SMT** , designed to finance different stages of the mining project (exploration → construction → production).

![Token Badge](https://img.shields.io/badge/Salta-Mining%20Token-blue)

![Solidity Version](https://img.shields.io/badge/Solidity-0.8.24-brightgreen)

![License](https://img.shields.io/badge/License-MIT-yellow)

---

## 🚀 Features

* **Fixed supply of 500M tokens:** Entire supply minted at deploy.
* **Standard ERC-20 + Burnable:** Built on OpenZeppelin, secure and audited.
* **Ownable:** Contract ownership by the deployer (initial owner).
* **EVM compatibility:** Works on BSC, Arbitrum, and any EVM-based network.
* **Ready-to-use deploy scripts:** Hardhat scripts for testnet and mainnet.
* **Vesting & project phases (roadmap):** Future module to release tokens according to mining milestones.

---

## 📋 Requirements

* Node.js (v18+ recommended)
* NPM
* Metamask account or similar
* Some BNB on **BSC Testnet** for testing (via faucet)

---

## 🔧 Installation

1. Clone the repository:

```bash
git clone https://github.com/leonardoprimero/miningTokenSalta.git
cd miningTokenSalta
```

2. Install dependencies:

```bash
npm install
```

3. Create an `.env` file from the example:

```bash
cp .env.example .env
# Edit .env with your PRIVATE_KEY and RPC endpoints
```

---

## 🏗️ Project Structure

```
miningTokenSalta/
├── contracts/
│   └── SaltaMiningToken.sol    # ERC20 contract for 500M SMT
├── scripts/
│   └── deploy.js               # Deployment script
├── .env.example                # Environment variables (template)
├── .gitignore                  # Ignore node_modules, artifacts, .env
├── hardhat.config.cjs          # Hardhat configuration
├── package.json                # Scripts and dependencies
└── README.md                   # Documentation
```

---

## 🤖 Usage

### Compile

```bash
npx hardhat compile
```

### Run local node

```bash
npx hardhat node
```

### Deploy locally

```bash
npx hardhat run scripts/deploy.js --network localhost
```

### Deploy to BSC Testnet

```bash
npm run deploy:bsctestnet
```

> You need a bit of BNB from faucet to pay for gas.

---

## 📊 Token Details

* **Name:** Salta Mining Token
* **Symbol:** SMT
* **Supply:** 500,000,000
* **Decimals:** 18
* **Extra functions:** Burnable, Ownable

---

## 🔍 Explorers (optional)

Verify the contract on BscScan Testnet:

```bash
npm run verify:bsctestnet -- 0xTOKEN_ADDRESS 0xOWNER_ADDRESS
```

---

## 🔄 Roadmap

* ✅ ERC20 token with 500M supply (Day 1)
* 🔜 Vesting and project phases (exploration, construction, production)
* 🔜 Investor dashboard (Next.js + on-chain API)
* 🔜 Integration with decentralized exchanges (DEXs)

---

## ⚠️ Disclaimers

* **Not an investment offer:** This repository is a technical prototype.
* **Educational use:** Intended to learn about blockchain tokenization.
* **Private keys:** Never upload your private keys. Use `.env.example` as reference.
* **Testnet first:** Always test thoroughly on testnet before deploying to mainnet.

---

## 🤝 Contributing

Contributions are welcome. To collaborate:

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to your branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

MIT. Free to use, modify, and share. 🚀

---

## Author

Leonardo I (a.k.a. [@leonardoprimero](https://github.com/leonardoprimero))
