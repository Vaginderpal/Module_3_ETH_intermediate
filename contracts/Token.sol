// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Token {// Public variables
string public tokenName;
string public tokenSymbol;
uint256 public totalSupply;

// Mapping variable
mapping (address => uint256) public balances;

// Constructor
constructor(string memory _name, string memory _symbol) {
    tokenName = _name;
    tokenSymbol = _symbol;
}

// Mint function
function mint(address _address, uint256 _value) public {
    totalSupply += _value;
    balances[_address] += _value;
}

// Burn function
function burn(address _address, uint256 _value) public {
    require(balances[_address] >= _value, "Insufficient balance");
    
    totalSupply -= _value;
    balances[_address] -= _value;
}
}
