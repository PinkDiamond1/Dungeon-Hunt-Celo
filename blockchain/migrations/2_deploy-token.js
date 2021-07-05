const BadgerToken = artifacts.require("BadgerToken");

module.exports = function (deployer) {
    deployer.deploy(BadgerToken);
};
