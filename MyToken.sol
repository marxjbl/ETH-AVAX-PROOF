// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyToken {

    // public variables here
    string public tokenName = "ETH PROOF";
    string public tokenAbbrv = "ETHPRF";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances; // mapping to store balances of each address

    // mint function with require statement
    function mint(address _address, uint _value) public {
        require(_address != address(0), "Invalid address");
        totalSupply += _value;          // Increase total supply by _value
        balances[_address] += _value;   // Increase balance of _address by _value
    }

    // burn function with require, assert, and revert statements
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        require(totalSupply >= _value, "Insufficient total supply to burn");

        balances[_address] -= _value;   // Decrease balance of _address by _value

        // assert to ensure total supply is correctly updated
        assert(totalSupply >= _value);
        
        totalSupply -= _value;          // Decrease total supply by _value

        // Check if total supply is updated correctly, otherwise revert
        if (totalSupply < 0) {
            revert("Invalid total supply");
        }
    }
}
