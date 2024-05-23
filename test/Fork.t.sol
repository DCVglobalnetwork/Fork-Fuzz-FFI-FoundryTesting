// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/console.sol";

// First define the IWETH interface and functions we wil be calling
interface IWETH {
    function balanceOf(address) external view returns (uint256);
    function deposit() external payable;
}

// we will deposit IWETH into web that is deployed on the mainnet and then cosole log the balance
contract ForkTest is Test {
    IWETH public weth;

    function setUp() public {
        weth = IWETH(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2); // address of the web that is deployed on the mainent
    }

    function testDeposit() public {
        uint256 balBefore = weth.balanceOf(address(this));
        console.log("balance before", balBefore);

        weth.deposit{value: 100}();

        uint256 balAfter = weth.balanceOf(address(this));
        console.log("balance after", balAfter);
    }
}
