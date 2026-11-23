// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.38;

import "foundry-huff-neo/HuffNeoDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract CondomeTest is Test {
    using HuffNeoConfig for HuffConfig;

    address public conedome;

    function setUp() public {
        conedome = HuffNeoDeployer.config().with_evm_version("amsterdam").deploy("contracts/Conedome.huff");
    }

    function testConedome() public {
        console.logAddress(address(conedome));
        bytes memory bytecode =
            hex"7f00000000000000000000000000000000000000000000000000000000000000207f00000000000000000000000000000000000000000000000000000000000000207f0000000000000000000000000000000000000000000000000000000000000000a17f00000000000000000000000000000000000000000000000000000000000000007f0000000000000000000000000000000000000000000000000000000000000000f3";
        address(conedome).call{value: 0}(bytecode);
    }
}
