require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {

  solidity: "0.8.4",
  networks: {
    hardhat: {},
    : {
      url: `https://rinkeby.infura.io/v3/YOUR_INFURA_PROJECT_ID`,
      accounts: [`0x${YOUR_PRIVATE_KEY}`]
    }
  }
};
