// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {SafeMath} from "./utils/SafeMath.sol";

contract NFTRewards is  ERC721URIStorage, IERC721Receiver, AccessControl {
    using SafeMath for uint256;

    uint256 public tokenCounter; 
    address public Validator;

    struct Diamond {
        uint256 id;
        string ipfsHash;
        address owner;
        bool authenticate;
        bool collateralLocked;
        bool liquidityRemoved;
        bool reedemDiamond;
        bool nftLocked;
    }

    mapping(uint256 => Diamond) public nfts;
    mapping(address => uint256) public deposit;

    modifier onlyAdmin() {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, _msgSender()),
            'ArthPool: You are not the admin'
        );
        _;
    }

    constructor() ERC721("Diamond", "NFT") {
        tokenCounter = 0;
        _setupRole(DEFAULT_ADMIN_ROLE, _msgSender());
        Validator = msg.sender;
    }

    function createCollectible(
        string memory tokenURI
    ) public returns (uint256) {
        tokenCounter = tokenCounter + 1;
        uint256 newItemId = tokenCounter;

        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        nfts[newItemId] = Diamond(
            newItemId,
            tokenURI,
            msg.sender,
            false,
            false,
            false,
            false,
            false
        );

        return newItemId;
    }

    function onERC721Received(address, address, uint256, bytes memory) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}