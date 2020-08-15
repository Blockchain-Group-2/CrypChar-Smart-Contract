// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

contract MetaCoin {

    mapping (uint256 => uint256) public balances;
    event t(address sender, address receiver, uint continent, uint amount, bytes memo);
    event b(uint256[7]);
    
    constructor() public{}

    function transfer(address receiver, uint to, uint value, string memory memo) public payable returns (bool success) {
        balances[to] += value;
        emit t(msg.sender, receiver, to, value, bytes(memo));
        return true;
    }

    function withdraw(address receiver, uint to, uint value, string memory memo) public payable returns (bool success) {
        if (value > balances[to]) return false;
        
        balances[to] -= value;
        emit t(msg.sender, receiver, to, value, bytes(memo));
        return true;
    }
    
    function store() public payable returns (uint[7] memory) {
        uint[7] memory bs;
        for (uint i=0; i<7; i++){
            bs[i]=balances[i];
        }   
        
        emit b(bs);
        
        return bs;
    }
    
    function getBalance(uint i) public payable returns (uint){
        return balances[i];
    }
    
    function () external payable {}
}
