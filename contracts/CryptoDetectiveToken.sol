/*

--- Abstract ---

CryptoDetective (CTD) introduces a novel approach to enhancing web3 
cybersecurity through a unique blend of incentivization and education. 

It leverages the BNB Chain  to create a decentralized ecosystem where 
learning and the detection of vulnerabilities in other projects are rewarded. 

--- Useful links ---

• Website: https://cryptodetective.io/
• Litepaper: https://cryptodetective.io/litepaper
• X (Twitter): https://twitter.com/CryptoDetectiv
• Telegram: https://t.me/ctdetective

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts@4.9.5/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.5/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@4.9.5/token/ERC20/extensions/ERC20Votes.sol";

contract CryptoDetective is ERC20, ERC20Permit, ERC20Votes {
    constructor() ERC20("CryptoDetective", "CTD") ERC20Permit("CryptoDetective") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20, ERC20Votes)
    {
        super._burn(account, amount);
    }
}