const HDWalletProvider = require("@truffle/hdwallet-provider");

const mnemonic = "strategy analyst wise kind ozone alert hazard alley entry please deputy pear";

module.exports = {
  networks: {
    sandbox: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://sandbox.truffleteams.com/27932dd9-e881-4f60-91e1-41d8951023eb")
      },
      network_id: 1597450602082
    }
  }
};
