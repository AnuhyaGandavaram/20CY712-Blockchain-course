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
    student [10] stud;
    uint256 counter = 0;

function store(uint256 _rollNumber, string memory _name, uint256 _mark1, uint256 _mark2, uint256 _mark3) public {
    stud[counter].rollNumber = _rollNumber;
    stud[counter].name = _name;
    stud[counter].mark1 = _mark1;
    stud[counter].mark2 = _mark2;
    stud[counter].mark3 = _mark3;
    stud[counter].total = _mark1 + _mark2 + _mark3;
    counter = counter + 1;
}
function retrieve(uint256 _rollNumber) public view returns (uint256, string memory, uint256){
    uint256 j=0;
    for(j=0;j<=10;j+=1)
    {
        if(stud[j].rollNumber == _rollNumber)
        {
            return (stud[j].rollNumber,stud[j].name, stud[j].total);

        }
    }
    }
}

