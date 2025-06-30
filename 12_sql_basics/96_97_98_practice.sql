CREATE DATABASE employee_details;

USE employee_details;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);



INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
(2, 'Jane', 'Smith', 'Finance', 60000.00, '2019-03-23'),
(3, 'Alice', 'Johnson', 'IT', 75000.00, '2021-07-10'),
(4, 'Bob', 'Brown', 'Marketing', 55000.00, '2018-09-30'),
(5, 'Charlie', 'Davis', 'IT', 70000.00, '2022-02-20');


SELECT * 
FROM Employees;

SELECT FirstName ,LastName 
FROM Employees;

SELECT FirstName, Salary 
FROM Employees;

-- Full name , employeeID 

SELECT EmployeeID ,
CONCAT(FirstName,' ',LastName) AS "FullName"
FROM Employees;

SELECT EmployeeID,Salary,
CONCAT(FirstName ,' ',LastName) [FULL NAME]
FROM Employees;



CREATE TABLE EmployeeRecords (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO EmployeeRecords (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
(1, 'John', 'Miller', 'HR', 60000),
(2, 'Jane', 'Smith', 'Finance', 75000),
(3, 'John', 'Miller', 'HR', 60000),
(4, 'Emily', 'Davis', 'IT', 85000),
(5, 'Michael', 'Brown', 'Finance', 75000),
(6, 'Jane', 'Smith', 'Finance', 75000);


SELECT *
FROM EmployeeRecords;

SELECT 
DISTINCT(FirstName)
FROM EmployeeRecords;

SELECT 
DISTINCT FirstName, LastName
FROM EmployeeRecords;

SELECT 
DISTINCT Salary 
FROM EmployeeRecords;

SELECT 
DISTINCT *
FROM EmployeeRecords;

-- Temporary Tables

    SELECT *
    INTO #temp1
    FROM [dbo].[Employees];

    SELECT *
    FROM #temp1;

    SELECT *
    INTO temp_2
    FROM Employees;

    SELECT *
    FROM temp_2;

    SELECT *
    INTO #temp_3
    FROM Employees;

    SELECT *
    INTO ##temp_emp_records
    FROM EmployeeRecords;

    SELECT *
    FROM ##temp_emp_records;