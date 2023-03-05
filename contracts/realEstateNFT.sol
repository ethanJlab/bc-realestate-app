// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.8.1/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@4.8.1/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@4.8.1/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@4.8.1/access/Ownable.sol";
import "@openzeppelin/contracts@4.8.1/utils/Counters.sol";
contract RealEstate is ERC721, ERC721URIStorage, ERC721Burnable, Ownable {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("RealEstate", "RE") {}

    mapping(address => uint[]) public ownedNFTs;

    // dynamic attributes
    mapping(uint => uint) public price;
    
    mapping(address => uint[]) public saves;

    mapping(uint => string) public contactInfo;

    

    function safeMint(address to, string memory uri) public {
        uint256 tokenId = _tokenIdCounter.current();
        ownedNFTs[payable(msg.sender)].push(tokenId);
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }

    function getOwnedNFTs(address _address) public view returns(uint[] memory ) {
        return ownedNFTs[_address];
    }

    function updatePrice(uint tokenID, uint _price) public  {
        price[tokenID] = _price;
    }

    function getPrice(uint tokenID) public view returns(uint){
        return price[tokenID];
    }

    function saveProperty(uint tokenID) public {
        saves[payable(msg.sender)].push(tokenID);
    }

    function getSavedProperties() public view returns(uint[] memory) {
        return saves[msg.sender];
    }

    function updateContactInfo(uint tokenID, string memory _contactInfo) public {
        contactInfo[tokenID] = _contactInfo;
    }

    function getContactInfo(uint tokenID) public view returns (string memory) {
        return contactInfo[tokenID];
    }

    // The following functions are overrides required by Solidity.

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }    

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }
}
