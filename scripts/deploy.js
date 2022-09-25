// scripts/deploy.js
async function main() {
  const CACTI = await ethers.getContractFactory("CACTI");
  const instance = await CACTI.deploy();
  await instance.deployed();
  console.log("CACTI Token deployed to:", instance.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
