// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Storage {

//State Variables

uint256 rollNumber; // Store the Roll Number of the Student

string name; // Store the Name of the Student

uint256 mark1;

uint256 mark2;
uint256 mark3;
uint256 total;
function store(uint256 _rollNumber, string memory _name, uint256 _mark1, uint256 _mark2, uint256 _mark3) public {
    rollNumber = _rollNumber;
    name = _name;
    mark1 = _mark1;
    mark2 = _mark2;
    mark3 = _mark3;
    total = _mark1 + _mark2 + _mark3;
}
function retrieve() public view returns (uint256, string memory, uint256){
    return (rollNumber,name, total);
    }
}

