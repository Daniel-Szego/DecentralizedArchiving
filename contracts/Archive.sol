pragma solidity ^0.4.23;
import "./ArchiveBL.sol";
import "./ArchiveInterface.sol";

// simple contract to handle archive : interface implementation
contract Archive is ArchiveInterface {

    //version of the contract
    string public version = "Archive.0.0.1";
    //administrators of the contract
    address[] public admins;
    //business logic
    address public archiveBL;

    //constrcutor
    constructor(){
        admins.push(msg.sender);
    }

    //modifiers
    modifier isCurrentAdmin(){
        _;
    }

    //adminsitrator functions
    function addAdmin() isCurrentAdmin() public {

    }

    function addAdmin(address _address) isCurrentAdmin() public {

    }
    
    function deleteAdmin(address _address) isCurrentAdmin() public {

    }
   
    // view functions
    function isAdmin(address _address) view public {

    }

    // setting BL
    function setArchiveBL (address _address) isCurrentAdmin() public {

    }

    // getting version of the business logic
    function getBLVersion () public returns (string){

    }
}