# Paras's-Metacrafters-Submission

This is the submission for Metacrafters Solidity Beginner Module. 

## Description

With the help of this contract, the user is able to keep track of overall supply as well as a balance map that shows the worth of each address or account owner. If the user has enough tokens, he or she can either mint more tokens to increase the overall supply or burn tokens to reduce the supply's value. An if statement is used to verify this. 

## Getting Started

### Executing program

Use the online Solidity IDE Remix to run this program. Visit the Remix website at https://remix.ethereum.org to get started.

When you are on the Remix website, click the "+" icon in the left sidebar to start a new file. Put a.sol extension to the file, such as HelloWorld.sol. The code below should be copied and pasted into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ParasToken {
    string public tokenname = "Paras's Token";
    string public tokenabbreviation = "PRT";
    uint public tokensupply = 100;
    mapping (address => uint) public balance;
    function mint(address add, uint val) public {
        balance[add] += val; 
        tokensupply += val;
    } 
    function burn(address add, uint val) public {
        if(balance[add] > val){
            return;
        }
        balance[add] -= val;
        tokensupply -= val;
    }}
```

## Authors

Paras Goyal


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
