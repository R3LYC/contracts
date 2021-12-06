// SPDX-License-Identifiers: MIT 

pragma solidity ^0.8.0; 

import "./LibPart.sol"; interface IRoyaltiesProvider {

    function getRoyalties(addres token, uint tokenId) external returns (LibPart.[]memory);
}

