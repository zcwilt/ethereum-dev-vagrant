var TestSmartContract = artifacts.require("./TestSmartContract");
module.exports = function(deployer) {
    deployer.deploy(TestSmartContract);
};