pragma solidity >=0.4.22 <0.7.0;

contract MetaCoin {

    mapping(uint256 => uint256) public hash;
    uint256 i=0;

    function store(uint256 num) public returns (bool success){
        hash[i]+=num;
        i++;
        return true;
    }
    
    function get(uint i) public view returns (uint256){
        return hash[i];
    }
}
