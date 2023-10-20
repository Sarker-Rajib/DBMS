CREATE database Company;

use Company;

CREATE table Emplyee(
	EmpId INT,
	EmpName varchar(50) NOT NULL,
	Joining_year DATE,
	DOB DATE,
	Designation varchar(30) NOT NULL,
	Salary INT,
    PRIMARY KEY (EmpName, Designation)
);
