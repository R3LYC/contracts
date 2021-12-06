// SPDX-Licence-Identifier: MIT 

pragma solidity ^0.8.0;

import "https://github.com/R3LYC/contracts/blob/c29b063e595a1d2aa7e0a8d02bdcb5c1fa5720b5/LibPart.sol"; 

interface RoyaltiesV2 {
    event RoyaltiesSet (uint256 tokenId, LibPart.Part[] royalties);

function getRaribleV2Royalties (uint256 id) external view returns (LibPart.Part[] memory);

}

