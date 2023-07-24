// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Token {
    // Public variables
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;

    // Mapping variable
    mapping (address => uint256) public balances;

    // Owner of the contract
    address public owner;

    // Modifier to ensure that only the owner can execute certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Constructor
    constructor(string memory _name, string memory _symbol) {
        tokenName = _name;
        tokenSymbol = _symbol;
        owner = msg.sender; // Set the contract creator as the owner
    }

    // Mint function
    function mint(address _address, uint256 _value) public onlyOwner {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance");

        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // Transfer tokens to another address
    function transfer(address _to, uint256 _value) public {
        require(balances[msg.sender] >= _value, "Insufficient balance");

        balances[msg.sender] -= _value;
        balances[_to] += _value;
    }

    // Get the balance of a specific address
    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }

    // Function to change the owner of the contract (can only be called by the current owner)
    function changeOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), "Invalid address");
        owner = _newOwner;
    }
}
