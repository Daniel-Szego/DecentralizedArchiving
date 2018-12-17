var Archive = artifacts.require("Archive");
var ArchiveInstance;
var version;

contract('Testing Archive', function(accounts) {
    it("test of the Archive contract: deployed", function() {
        return Archive.deployed().then(function(instance) {
            ArchiveInstance = instance;
            return ArchiveInstance.version({from: accounts[0]});             
        }).then(function(result) {
            version = result;
            assert.equal(version, "Archive.0.0.1", "version matching");      
        });
    });
});