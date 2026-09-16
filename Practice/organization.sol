// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Organization {

    string name;
    uint customerId;
    string contactNo;
    string email;

    // Constructor
    constructor(
        string memory _name,
        uint _customerId,
        string memory _contactNo,
        string memory _email
    ) {
        name = _name;
        customerId = _customerId;
        contactNo = _contactNo;
        email = _email;
    }

    // Update contact number
    function updateContact(string memory _contactNo) public {
        contactNo = _contactNo;
    }

    // Update email
    function updateEmail(string memory _email) public {
        email = _email;
    }

    // Print / display all data
    function printData() public view returns (
        string memory,
        uint,
        string memory,
        string memory
    ) {
        return (name, customerId, contactNo, email);
    }
}