// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title Salta Mining Token (SMT) - supply fijo 500,000,000
contract SaltaMiningToken is ERC20, ERC20Burnable, Ownable {
    /// @param owner_ address que recibirá todo el supply inicial y será el dueño
    constructor(address owner_) ERC20("Salta Mining Token", "SMT") Ownable(owner_) {
        _mint(owner_, 500_000_000 * 1e18); // 500M con 18 decimales
    }
}
