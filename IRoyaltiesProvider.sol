// SPDX-License-Identifiers: MIT 

pragma solidity ^0.8.0; 

import "@R3LYC/contracts/blob/main/LibPart.sol"; interface IRoyaltiesProvider {

    function getRoyalties(addres token, uint tokenId) external returns (LibPart.[]memory);
}

