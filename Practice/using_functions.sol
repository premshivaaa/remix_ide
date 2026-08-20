// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// How to create functions and constructors. Return types, function calling etc.
contract Person{
    string public name;
    uint public age;

    constructor ( string memory _name, uint _age) {
        name = _name;
        age = _age;
    }

    function changeName(string memory sname) public {
        name = sname;
    }

    function changeAge(uint newAge) public {
        age = newAge;
    }

    function getName()
    public view 
    returns(string memory, uint){
        return(name, age);
    }
}