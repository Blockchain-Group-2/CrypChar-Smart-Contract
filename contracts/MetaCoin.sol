pragma solidity >=0.4.22 <0.7.0;

/**
 * @title Storage
 * @dev Store & retreive value in a variable
 */
contract Storage {

    uint256[9999] public number;

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public payable returns (bool success){
        for (uint i=0; i<number.length; i++){
            if (number[i]==0){
                number[i]=num;
                return true;
            }
        }
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retreive() public view returns (uint256[9999] memory){
        return number;
    }
}
