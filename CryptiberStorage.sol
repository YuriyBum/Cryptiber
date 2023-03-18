pragma solidity ^0.6.6;

contract CryptiberStorage {
    
    string[] internal inventions;
    
    function AddHash (string memory NewHash) public returns (uint) {
        inventions.push(NewHash);
        return inventions.length - 1;
            }
    
    function GetHash(uint id) public view returns (string memory) {
        return inventions[id];
    }

    function GetHashId(string memory hash) public view returns (uint) {
        bytes32 comV = keccak256(bytes(hash));
        for (uint256 i = 0; i < inventions.length; i++) {
          if (keccak256(bytes(inventions[i])) == comV) {
            return i;
          }
        }
        revert("Hash not found"); 
    }

}
