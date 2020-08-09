const BlockBook = artifacts.require("BlockBook");

module.exports = function(deployer) {
  deployer.deploy(BlockBook);
};