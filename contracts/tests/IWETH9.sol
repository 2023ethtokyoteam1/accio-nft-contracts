// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

interface IWETH9 {
  function deposit() external payable;

  function withdraw(uint wad) external;

  function totalSupply() external view returns (uint);

  function approve(address guy, uint wad) external returns (bool);

  function transfer(address dst, uint wad) external returns (bool);

  function transferFrom(
    address src,
    address dst,
    uint wad
  ) external returns (bool);

  function balanceOf(address) external view returns (uint);

  function allowance(
    address owner,
    address spender
  ) external view returns (uint);
}
