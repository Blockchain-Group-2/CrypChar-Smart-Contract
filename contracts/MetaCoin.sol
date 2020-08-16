pragma solidity >=0.4.22 <0.7.0;

contract MetaCoin {

    uint256[99] public number;

    function store(uint256 num) public payable returns (bool success){
        for (uint i=0; i<number.length; i++){
            if (number[i]==0){
                number[i]=num;
                return true;
            }
        }
    }
    
    function getAll() public view returns (uint256[99] memory){
        return number;
    }
    
    function get(uint i) public view returns (uint256){
        return number[i];
    }
}
