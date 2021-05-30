// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/BlockdemyCoin.sol";

contract TestBlockdemyCoin {
    function testInitialBalanceOfOwner() public {
        
        BlockdemyCoin coin = BlockdemyCoin(DeployedAddresses.BlockdemyCoin());

        uint256 expectedBalance = 1000;

        Assert.equal(
            coin.getBalance(tx.origin)
            ,expectedBalance
            ,"First account does not have a 1000 coins"
        );
    }
}