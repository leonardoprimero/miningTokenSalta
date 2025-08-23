const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deployer:", deployer.address);

  const Token = await hre.ethers.getContractFactory("SaltaMiningToken");
  const token = await Token.deploy(deployer.address);

  // 👇 Ethers v6
  await token.waitForDeployment();
  const tokenAddress = await token.getAddress();

  console.log("SMT deployed at:", tokenAddress);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
