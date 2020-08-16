// SPDX-License-Identifier: MIT
pragma solidity >=0.4.25 <0.7.0;

contract MetaCoin {

    mapping (uint256 => uint256) public balances;
    event t(address sender, address receiver, uint continent, uint amount, bytes memo);
    
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
    
    function getBalance(uint i) public payable returns (uint){
        return balances[i];
    }
    
    function () external payable {}

    uint256[] number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public {
        number.push(num);
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retreive() public view returns (uint256[] memory){
        return number;
    }
}
