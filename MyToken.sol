// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract MyToken {

    // public variables
    string public tokenName = "ETH PROOF";
    string public tokenAbbrv = "ETHPRF";
    uint public totalSupply = 0;

    // mapping variable to store balances of each address
    mapping(address => uint) public balances;

    // mint function with require statement
    function mint(address _address, uint _value) public {
        // Ensure that the provided address is not the zero address
        // The zero address is considered invalid as tokens cannot be minted to it
        require(_address != address(0), "Invalid address");

        // Increase the total supply of tokens by the specified value
        totalSupply += _value;          // Increase total supply by _value

        // Update the balance of the provided address by adding the specified value
        balances[_address] += _value;   // Increase balance of _address by _value
    }

    // burn function with require, assert, and revert statements
    function burn(address _address, uint _value) public {
        // Check that the balance of the address is sufficient to burn the specified value
        require(balances[_address] >= _value, "Insufficient balance to burn");

        // Check that the total supply is sufficient to burn the specified value
        require(totalSupply >= _value, "Insufficient total supply to burn");

        // Reduce the balance of the specified address by the burn value
        balances[_address] -= _value;

        // Assert to ensure the total supply is correctly updated
        // This check confirms that the total supply is still greater than or equal to the value to be burned
        assert(totalSupply >= _value);

        // Reduce the total supply by the burn value
        totalSupply -= _value;

        // Check if the total supply has become negative, which is logically incorrect
        // If the total supply is less than 0, revert the transaction with an error message
        if (totalSupply < 0) {
            revert("Invalid total supply");
        }
    }
}
