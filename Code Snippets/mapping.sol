// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author Ramaguru Radhakrishnan
 * @title Class Room with Structure & Mapping
 * @dev Store & retrieve a student details
 */
contract Class_Room_Struct_Mapping {
    
    mapping(string=>student) studentpointer;
    //Key - uint256 Roll No
    //  studentpointer[_rollNumber] = stud;
    
    //State Variable
    
    struct student {
    
    string name;       
    uint256 mark1;
    uint256 mark2;
    uint256 mark3;
    uint256 total;
    
    }
    
    student stud;

     /**
     * @dev Store student details
     * @param _rollNumber Roll Number of Student
     * @param _name Name of Student
     * @param _mark1 Science
     * @param _mark2 Social
     * @param _mark3 Maths
     */

    function store(string memory _rollNumber, string memory _name, uint256 _mark1, uint256 _mark2, uint256 _mark3) public {
        
      stud.name = _name;
      stud.mark1 = _mark1;
      stud.mark2 = _mark2;
      stud.mark3 = _mark3;
      stud.total = _mark1+ _mark2 + _mark3;
      
      studentpointer[_rollNumber] = stud;

        
    }

     /**
     * @dev Retrieve student details
     */

    function retrieve(string memory _rollno) public view returns (string memory, uint256){
        student memory stud1 = studentpointer[_rollno];
        return (stud1.name, stud1.total);
    }
}
