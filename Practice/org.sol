// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract org {
    int age;
    string name;
    string adds;
    int custId;
    int contact;

    constructor(
        int _age,
        string memory _name,
        string memory _adds,
        int _custId,
        int _contact
    ) {
        age = _age;
        name = _name;
        adds = _adds;
        custId = _custId;
        contact = _contact;
    }

    function updateAge(int _newage) public returns(int) {
        age = _newage;
        return age;
    }

    function getDetails() public view returns(
        int,
        string memory,
        string memory,
        int,
        int
    ) {
        return (age, name, adds, custId, contact);
    }
}