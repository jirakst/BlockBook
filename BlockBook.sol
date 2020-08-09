pragma solidity >=0.4.21 <0.7.0;
//0.5.16;

contract BlockBook {
    mapping(uint => Book) public book;
    //BlockBook[] public book;
    uint256 bookCount = 0;
    address owner;
   
   /*
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    */
    
    struct Book {
        uint _id;
        string _account;
        string _address;
        string _note;
    }
    
    /*
    constructor() public {
        owner == msg.sender;
    }
    */
    
   function AddBlock(string memory _account, string memory _address, string memory _note) public /*onlyOwner*/ {
       bookCount++;
       book[bookCount] = Book(bookCount, _account, _address, _note);
       //book.push(BlockBook(_account, _address, _note));
    }
}