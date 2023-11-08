create database exam;

use exam;

CREATE TABLE Student (
StudentID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL,
Phone VARCHAR(15),
Address TEXT
);

CREATE TABLE Book (
ISBN VARCHAR(13) PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
Author VARCHAR(255) NOT NULL,
Genre VARCHAR(50),
TotalCopies INT NOT NULL,
AvailableCopies INT NOT NULL
);

CREATE TABLE Borrowing (
BorrowID INT AUTO_INCREMENT PRIMARY KEY,
StudentID INT,
ISBN VARCHAR(13),
BorrowDate DATE NOT NULL,
DueDate DATE NOT NULL,
ReturnDate DATE,
FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);


create table number(
	hello int
);

insert into number(hello)values(5);

select * from number;

-- SET sql_safe_updates = 1; 
-- UPDATE number
-- SET hello = (Select * from number where hello = 5) - 1;
-- SET sql_safe_updates = 0;







