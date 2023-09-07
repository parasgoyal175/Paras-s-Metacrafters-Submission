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
