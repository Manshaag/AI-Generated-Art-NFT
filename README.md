# Dynamic NFT with AI-Generated Art

This project features a Solidity smart contract for minting AI-generated NFTs with dynamic metadata. Unlike traditional static NFTs, these tokens evolve over time using timestamp-based updates, making them ideal for AI art, gaming, and interactive Web3 experiences.

## Features
- **Dynamic Metadata**: NFT metadata updates over time.
- **No Imports or Constructors**: Simple and lightweight contract.
- **Timestamp-Based Changes**: Ensures NFTs evolve dynamically.
- **Secure & Efficient**: Uses mappings and internal counters.

## How It Works
1. The contract owner mints an NFT.
2. Each NFT is assigned a unique token ID.
3. Metadata is dynamically generated using timestamps.
4. The `getTokenURI` function returns an evolving metadata URL.

## Use Cases
- AI-generated evolving artwork
- Gamified NFT experiences
- Real-time data-driven digital collectibles

## Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/your-username/dynamic-nft.git
   ```
2. Navigate to the project directory:
   ```sh
   cd dynamic-nft
   ```
3. Install dependencies (if needed):
   ```sh
   npm install
   ```

## Deployment
1. Deploy the smart contract on a compatible EVM blockchain.
2. Use the `mintNFT` function to create NFTs.
3. Retrieve the evolving metadata using `getTokenURI(tokenId)`.

## License
This project is open-source and available for modification and integration under the MIT License.

---

🚀 Explore the future of NFTs with evolving AI-generated metadata!

