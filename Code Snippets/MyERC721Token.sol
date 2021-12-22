// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";

/**
 * @title MyERC721Token
 * @author Anuhya Gandavaram
 */

contract MyERC721Token is ERC721 {
    
    /**
     * @dev Create the Token by Passing the Name and Symbol to the ERC721 Cconstructor (TokenName, TokenSymbol)
     */
    constructor() ERC721("AnuCoin","ANU") public {}
    
    /**
     * @dev Function to Mint a new ERC721 Token 
     * @param tokenId Unique Token ID
     */ 
    function mintMyToken(uint256 tokenId) public  {
        
        //Calling the Built-in function in ERC721
        _mint(msg.sender,tokenId);
        
    }
    
    /**
     * @dev Function to Transfer a ERC721 token
     * @param from      Owner address
     * @param to        Receiver address
     * @param tokenId   ERC721 Token ID
     */
    function transferMyToken(address from, address to, uint256 tokenId) public  {
        
        //Calling the Built-in function in ERC721
        _transfer(from, to, tokenId);
        
    }
    
    /**
     * @dev Function to Burn a ERC721 token
     * @param tokenId ERC721 Token ID 
     */
     function burnMyToken(uint256 tokenId) public  {
         
         //Calling the Built-in function in ERC721
        _burn( tokenId);
        
    }
    
}
