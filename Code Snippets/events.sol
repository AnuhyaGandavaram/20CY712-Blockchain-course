pragma solidity >=0.4.22 <0.7.0;

/**
 * @title Events
 * @author Anuhya Gandavaram
 */

contract Events{
    
    /* Event Definition */
    event ShowDemo(uint256);
  
  /**
   * @dev Function to emit the Event Registered
   * @param _value Sample Value
   */ 
  function emitter(uint256 _value) public {
      
    emit ShowDemo(_value);
    
  }
  
} 
