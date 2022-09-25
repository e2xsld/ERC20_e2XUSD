// contracts/CACTI.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CACTI is ERC20 {
    uint256 initialSupply;

    constructor() ERC20("CactiCoin", "CACTI") {
        initialSupply = 10_000_000 * (10 ** decimals());
        _mint(msg.sender, initialSupply);
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}