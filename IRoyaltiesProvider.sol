// SPDX-License-Identifiers: MIT 

pragma solidity ^0.8.0; 

import "https://github.com/R3LYC/contracts/blob/c29b063e595a1d2aa7e0a8d02bdcb5c1fa5720b5/LibPart.sol"; interface IRoyaltiesProvider {

    function getRoyalties(addres token, uint tokenId) external returns (LibPart.[]memory);
}

