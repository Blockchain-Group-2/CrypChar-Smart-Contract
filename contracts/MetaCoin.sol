// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

contract Exchange {

    mapping (address => uint256) public balances;

    event LogDeposit(address sender, uint amount);
    event LogWithdrawal(address receiver, uint amount);
    event LogTransfer(address sender, address to, uint amount);
    
    constructor() public{}

    function deposit() public payable returns(bool success) {
        balances[msg.sender] +=msg.value;
        emit LogDeposit(msg.sender, msg.value);
        return true;
    }

    function withdraw(uint value) public returns(bool success) {
        if(balances[msg.sender] < value) return false;
        
        balances[msg.sender] -= value;
        msg.sender.transfer(value);
        emit LogWithdrawal(msg.sender, value);
        return true;
    }

    function transfer(address payable to, uint value) public returns(bool success) {
        if(balances[msg.sender] < value) return false;
        
        balances[to] += value;
        balances[msg.sender] -= value;
        to.transfer(value);
        emit LogTransfer(msg.sender, to, value);
        return true;
    }
    
    function getBalance(address add) public returns (uint) {
        return balances[add];
    }
}
