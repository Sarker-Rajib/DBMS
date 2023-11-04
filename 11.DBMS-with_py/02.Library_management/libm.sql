CREATE DATABASE STUDENT_LIBRARY_MANAGEMENT;
USE STUDENT_LIBRARY_MANAGEMENT;

CREATE TABLE Student
(
	Roll int PRIMARY KEY,
    Name varchar(48)
);

CREATE TABLE Librarian
(
	Lib_id int PRIMARY KEY,
    Lib_name varchar(48)
);

CREATE TABLE Book
(
	Book_id int PRIMARY KEY,
    Book_name varchar(40),
    Book_Genre varchar(25)
);

CREATE TABLE Borrow
(
	BORROWED_BY_roll int,
    Borrowed_Book_id int,
    Borrow_date date,
    Return_date date,
    
    FOREIGN KEY(BORROWED_BY_roll) REFERENCES STUDENT(Roll),
    FOREIGN KEY(Borrowed_Book_id) REFERENCES BOOK(Book_id),
    PRIMARY KEY(BORROWED_BY_roll, Borrowed_Book_id)
);

CREATE TABLE Permission
(
	Which_book_id int,
    Permitted_by int,
    
	FOREIGN KEY(Which_book_id) REFERENCES BOOK(Book_id),
    FOREIGN KEY(Permitted_by) REFERENCES Librarian(Lib_id),
    PRIMARY KEY(Which_book_id, Permitted_by)
);