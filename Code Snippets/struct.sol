// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract Class_room {

//State Variables

    struct student{
        uint256 rollNumber;
        string name;
        uint256 mark1;
        uint256 mark2;
        uint256 mark3;
        uint256 total;
    }
    student stud;

function store(uint256 _rollNumber, string memory _name, uint256 _mark1, uint256 _mark2, uint256 _mark3) public {
    stud.rollNumber = _rollNumber;
    stud.name = _name;
    stud.mark1 = _mark1;
    stud.mark2 = _mark2;
    stud.mark3 = _mark3;
    stud.total = _mark1 + _mark2 + _mark3;
}
function retrieve() public view returns (uint256, string memory, uint256){
    return (stud.rollNumber,stud.name, stud.total);
    }
}

