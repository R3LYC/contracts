// SPDX_License_Identifier: MIT 

pragma solidity ^0.8.0;

import "https://github.com/R3LYC/contracts/blob/c29b063e595a1d2aa7e0a8d02bdcb5c1fa5720b5/LibPart.sol";

abstract contract AbstractRoyalties {
    mapping (uint256 => LibPart.Part[]) public royalties;

function _saveRoyalties(uint256 _id, LibPart.Part[] memory _royalties) internal {
    for (uint i = 0; i< _royalties.lenght; i++) {
        require (_royalties[i].account != address (0x0), "Recipient should be present");
            require (_royalties[i].value !=0, "Royalty value should be positive");
                royalties[_id].push(_royalties[i]);
                }
            _onRoyaltiesSet(_id, _royalties);
    }
function _updateAccount(uint256 _id, address _from, address _to)
internal {
    uint length = royalties[_id].length;
    for(uint i = 0; i < lenght; i++) {
        if (royalties[_id][i].account == _from) {
            royalties[_id][i].account = payable(address(uint160(_to)));
            }
        }
    }
function _onRoyaltiesSet(uint256 _id, LibPart.Part[] memory _royalties) virtual internal;

}
