pragma solidity >=0.4.22 <0.7.0;

/**
 * @title Access
 * @author Anuhya Gandavaram
 * @dev This example shows the use of modifier
 */

contract Access {
    
    string aM;
    string awM;
    address owner;
    
    /**
     * @dev contract deployer becomes the owner
     */
    constructor() public {
        owner = msg.sender;
        
    }
    
    /** 
     * @dev isOK is a modifier checks whether the owner is accessing the function 
     * Only the Owner is allowed to change 
     */
    modifier isOk() {
        require(msg.sender == owner, "Access denied");
        _;
    }
    
   /**
   * @dev Function to add a variable without Modifiers
   * @param _awM String to be stored 
   */ 
  function addwithoutModifier(string memory _awM) public {
    
        awM = _awM;  

  }
  
  /**
   * @dev Function to add a variable with Modifiers
   * @param _aM String to be stored
   */ 
  function addwithModifier(string memory _aM) public isOk {
    
        aM = _aM;  

  }
 
}
