var ArchiveBL = artifacts.require("ArchiveBL");
var ArchiveBLInstance;
var version;

contract('Testing Archive Business Logic', function(accounts) {
    it("test of the ArchiveBL contract: deployed", function() {
        return ArchiveBL.deployed().then(function(instance) {
            ArchiveBLInstance = instance;
            return ArchiveBLInstance.version({from: accounts[0]});             
        }).then(function(result) {
            version = result;
            assert.equal(version, "ArchiveBL.0.0.1", "version matching");      
        });
    });
});