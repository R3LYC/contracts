// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0; 

import "https://github.com/R3LYC/contracts/blob/2989aa2a4b5a3d0d3e2a096342faa4e8c3c0cf41/AbstractRoyalties.sol";

import "https://github.com/R3LYC/contracts/blob/305f28a72c21dc2dbfbc7f8d913586bc90bc5fac/RoyaltiesV2.sol";

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
