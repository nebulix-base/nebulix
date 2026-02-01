// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract NebulixNBX is ERC20 {
    constructor(address recipient) ERC20("Nebulix", "NBX") {
        _mint(recipient, 19_000_000_000 * 10 ** decimals());
    }
}
