// contracts/License.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract License is ERC721URIStorage {
    uint256 private _nextTokenId;

    constructor() ERC721("Aimifier License", "AL") {}

    function awardItem(address holder, string memory tokenURI)
        public
        returns (uint256)
    {
        uint256 tokenId = _nextTokenId++;
        _mint(holder, tokenId);
        _setTokenURI(tokenId, tokenURI);

        return tokenId;
    }
}
