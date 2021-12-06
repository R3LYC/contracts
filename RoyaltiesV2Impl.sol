// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0; 

import "@R3LYC/contracts/blob/main/AbstractRoyalties.sol";

import "@R3LYC/contracts/blob/main/RoyaltiesV2.sol";

contract RoyaltiesV2Impl is AbstractRoyalties, RoyaltiesV2 
{
function getRaribleV2Royalties(uint256 id) override external view returns (LibPart.Part[] memory)
    {
        return royalties[id];
    }
function _onRoyaltiesSet(uint256 _id, LibPart.Part[] memory _royalties) oberride internal
    {
        emit RoyaltiesSet(_id, _royalties);
    }
}
