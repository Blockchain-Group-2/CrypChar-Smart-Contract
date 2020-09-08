//using a truffle sandbox so this code is not needed for deployment. If deploying to infura or mainnet, this code would be needed.


/*
require('dotenv').config()  //hides the Mnemonic in a seperate file for security purposes.
console.log(require('dotenv').config())
var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = process.env.MNEMONIC;
var infura_key = process.env.INFURA_API_KEY;

module.exports = {
  networks: {
    development: {
      protocol: 'http',
      host: 'localhost',
      port: 8545,
      network_id: '*' 
    },
    ropsten: {
       provider: new HDWalletProvider(mnemonic, infura_key, 1),
      network_id: 3,
      gas: 4000000,
     }
    }
};
  */

