// SPDX-License-Identifier: MIT
// Copyright (c) 2022 Jules - Core Labs

pragma solidity ^0.5.0;

interface IWeth {
    function deposit() external payable;
    function withdraw(uint wad) external;
    function balanceOf(address owner) external view returns(uint);
}