//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract test {
    //defining the struct. Struct can be defined with multiple data types and members;
   struct Book { 
      string title;
   }
   //declaring the variable Struct Book named book
   Book book;
   
   //to set the data inside struct variable Book
   function setBooktitle(string memory _title) public {
      book = Book(_title);
   }

   //to get the data inside struct variable Book
   function getTitle() public view returns (string memory) {
      return book.title;
   }
}
