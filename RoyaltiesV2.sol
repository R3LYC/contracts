// SPDX-Licence-Identifier: MIT 

pragma solidity ^0.8.0;

import "@R3LYC/contracts/blob/main/LibPart.sol"; 

interface RoyaltiesV2 {
    event RoyaltiesSet (uint256 tokenId, LibPart.Part[] royalties);

function getRaribleV2Royalties (uint256 id) external view returns (LibPart.Part[] memory);

}

