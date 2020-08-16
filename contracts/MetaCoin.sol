pragma solidity >=0.4.22 <0.7.0;

contract MetaCoin {

    mapping(uint256 => uint256) public hash;
    uint256 public i=0;

    function store(uint256 num) public returns (bool success){
        hash[i]+=num;
        i++;
        return true;
    }
    
    function get(uint256 i) public view returns (uint256){
        return hash[i];
    }

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
}
