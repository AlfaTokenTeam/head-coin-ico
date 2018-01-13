pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HeadCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HeadCoin(address _owner)  UpgradeableToken(_owner) {
    name = "HeadCoin";
    symbol = "HC";
    totalSupply = 1220000000000000;
    decimals = 7;

    balances[_owner] = totalSupply;
  }
}