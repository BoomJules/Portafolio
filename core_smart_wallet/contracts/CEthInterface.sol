// SPDX-License-Identifier: MIT
// Copyright (c) 2022 Jules - Core Labs
pragma solidity ^0.7.3;

interface CEthInterface {
  function mint() external payable;
  function redeemUnderlying(uint redeemAmount) external view returns (uint);
  function balanceOfUnderlying(address owner) external returns(uint);
}