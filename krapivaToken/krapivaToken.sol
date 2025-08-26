//SPDX-License-Identifier:MIT

pragma solidity ^0.8.24;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract krapivaToken is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    constructor() ERC20('42krapivi', 'KRT') Ownable(msg.sender){
        _mint(0x75AE055963B893aDEC72eB14B85570C39a4d62BB, 1000000 *10 **18);
    }
    function mint(address to, uint256 amount) external onlyOwner{
        _mint(to, amount);
    }
    function pause() external onlyOwner{
        _pause();
    }
    function unpause()external onlyOwner{
        _unpause();
    }
    //ERC20 define the _beforeTokenTransfer but pausable iverride => need to override
    function _update(address from, address to, uint256 value)
        internal
        override (ERC20, ERC20Pausable){
            super._update(from, to, value);
        }
    

    }
