CREATE database assignment;

use assignment;

CREATE table Student(
	Roll INT PRIMARY KEY,
    Name VARCHAR(48),
    Class VARCHAR(10),
    Section VARCHAR(10)
);

insert into student (Roll, Name, Class, Section) values (1, 'Rajib', 'Ten', 'A');
insert into student (Roll, Name, Class, Section) values (2, 'Ram', 'Ten', 'A');
insert into student (Roll, Name, Class, Section) values (3, 'Shaym', 'Ten', 'A');

CREATE table Library(
    Hired_by_roll INT,
    Hired_by_Name VARCHAR(48),
    Book_Name VARCHAR(50),
    FOREIGN KEY (Hired_by_roll) REFERENCES Student (Roll)
);

insert into Library (Book_Name, Hired_by_roll) values ('Seven heaven', 1);

CREATE table Fees(
    Roll INT,
    Name VARCHAR(48),
    Fee_for VARCHAR(50),
    Amount INT
);

SET SQL_SAFE_UPDATES = 0;

select * from student;
select * from Library;


use company;
CREATE table new_employee(
    EmployeeID INT,
    FirstName varchar(30),
    LastName varchar(30),
    Age INT,
    Department varchar(30)
);

insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values (1, 'John', 'Doe', 28, 'Sales');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 2, 'Jane', 'Smith',32 , 'Marketing');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 3, 'Michel', 'Jackson', 35, 'Finance');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 4, 'Sarah', 'Brown', 30, 'HR');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 5, 'William', 'Davis', 25, 'Engineering');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 6, 'Emily', 'Wilson', 28, 'Sales');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 7, 'Robert', 'Lee', 33, 'Marketing');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 8, 'Laura', 'Hall', 29, 'Finance');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 9, 'Thomas', 'White', 31, 'HR');
insert into new_employee ( EmployeeID , FirstName, LastName , Age , Department ) values ( 10, 'Olivia', 'Clark', 27, 'Engineering');

select * from new_employee;
select distinct Department from new_employee;
SELECT LastName, age FROM new_employee order by Age desc;
SELECT LastName FROM new_employee WHERE Age > 30 and department = 'Marketing';
SELECT * FROM new_employee WHERE department = 'Engineering';
SELECT * FROM new_employee where FirstName LIKE '%son%' or LastName LIKE '%son%';