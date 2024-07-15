// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // public variables here
    string public tokenName = "ETH Beginner";
    string public tokenAbbrv = "ETHBGNR";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances; // mapping to store balances of each address

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value;          // Increase total supply by _value
        balances[_address] += _value;   // Increase balance of _address by _value
    }

    // burn function with require statements
    function burn(address _address, uint _value) public {
        // Check if _address has enough tokens to burn
        require(balances[_address] >= _value, "Insufficient balance to burn");
        
        // Check if total supply has enough tokens to burn
        require(totalSupply >= _value, "Insufficient total supply to burn");

        // If both conditions are satisfied, proceed to burn tokens
        totalSupply -= _value;          // Decrease total supply by _value
        balances[_address] -= _value;   // Decrease balance of _address by _value
    }

}
