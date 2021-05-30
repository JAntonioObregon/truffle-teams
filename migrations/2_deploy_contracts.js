const BlockdemyCoin = artifacts.require("BlockdemyCoin");

module.exports = function (deployer) {
  deployer.deploy(BlockdemyCoin);
};
