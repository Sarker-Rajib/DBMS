
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    DepartmentID INT NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    CONSTRAINT FK_Department_Employees
        FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID)
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);
