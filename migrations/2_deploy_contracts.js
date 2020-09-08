const ConvertLib = artifacts.require("ConvertLib");
const CrypChar = artifacts.require("CrypChar");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, CrypChar);
  deployer.deploy(CrypChar);
};

//this deploys the contract onto the test net