pragma solidity ^0.8.0;

contract DynamicNFT {
    mapping(uint256 => string) private _tokenURIs;
    uint256 private _tokenCounter;
    address private _owner;
    
    mapping(uint256 => uint256) private _timestamps;
    
    event Minted(uint256 indexed tokenId, string tokenURI);
    
    modifier onlyOwner() {
        require(msg.sender == _owner, "Not the contract owner");
        _;
    }
    
    constructor() {
        _owner = msg.sender;
    }
    
    function mintNFT() external onlyOwner {
        uint256 tokenId = _tokenCounter;
        _tokenURIs[tokenId] = generateDynamicURI(tokenId);
        _timestamps[tokenId] = block.timestamp;
        _tokenCounter++;
        
        emit Minted(tokenId, _tokenURIs[tokenId]);
    }
    
    function generateDynamicURI(uint256 tokenId) internal view returns (string memory) {
        uint256 timeElapsed = block.timestamp - _timestamps[tokenId];
        return string(abi.encodePacked("https://metadata.example.com/", uint2str(tokenId), "?time=", uint2str(timeElapsed)));
    }
    
    function getTokenURI(uint256 tokenId) external view returns (string memory) {
        return generateDynamicURI(tokenId);
    }
    
    function uint2str(uint256 _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        while (_i != 0) {
            length -= 1;
            bstr[length] = bytes1(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }
}
