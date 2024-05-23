// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {Bit} from "../src/Bit.sol";

// topics
// - fuzz
// - assume an bound specify range for your fuzz
// - stats

// we are testing function mostSignificantBi from Bit.sol contract
contract FuzzTest is Test {
    Bit public b;

    function setUp() public {
        b = new Bit();
    }

    function mostSignificantBit(uint256 x) private pure returns (uint256) {
        uint256 i = 0;
        while ((x >>= 1) > 0) {
            i++;
        }
        return i;
    }
    // test of specifying the inputs
    function testMostSignificantBitManual() public {
        assertEq(b.mostSignificantBit(0), 0);
        assertEq(b.mostSignificantBit(1), 0);
        assertEq(b.mostSignificantBit(2), 1);
        assertEq(b.mostSignificantBit(4), 2);
        assertEq(b.mostSignificantBit(8), 3);
        assertEq(b.mostSignificantBit(type(uint256).max), 255);
    }
    // test of Foundry random inputs
    function testMostSignificantBitFuzz(uint256 x) public {
        // assume - If false, the fuzzer will discard the current fuzz inputs
        //          and start a new fuzz run
        // Skip x = 0
        // vm.assume(x > 0);
        // assertGt(x, 0);
        // bound(input, min, max) - bound input between min and max
        // Bound
        // x = bound(x, 1, 10);
        //assertGe(x, 1);
        //assertLe(x, 10);

        // we are embedding Foundry put in some random inputs and than it will call our
        // implementation of most significant bit
        uint256 i = b.mostSignificantBit(x); // functon which use binary search to find the most significant bit we assign to
        // a variable i and we compare this result to the implementation of most significant bit just scans from right to left
        assertEq(i, mostSignificantBit(x));
    }
}
