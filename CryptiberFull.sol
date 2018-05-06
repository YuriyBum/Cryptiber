pragma solidity ^0.4.21;

//This version now needs to be edited

contract Cryptiber {
    
    string[] public Invention;
    address[] public Inventor;
    
    //The main function: writing the invention source file hash (we're recommend to use a SHA256
    //calculated by another prohram (HashMe etc.). After the data entry you'll get your id and must to save it!
    
    function AddHash (string NewHash) public returns (uint)  {
        Invention.push(NewHash);
        Inventor.push(msg.sender);
        return Invention.length;
        
            }
            
     function GetHashOnId (uint Hashid) public constant returns (string) {
         if (Hashid <= Invention.length) {
         return Invention[Hashid];
    
         } else
         return "Too large number, please select id not larger than GetMaxid number";
     } 
     
     function GetAuthorOnId (uint Hashid) public constant returns (address) {
        if (Hashid <= Invention.length) {
         return Inventor[Hashid];
        } else
        return 0x000000000000000000000000000;
     }    
     
      function GetMaxid () public constant returns (uint) {
         return (Invention.length);
     } 
}
