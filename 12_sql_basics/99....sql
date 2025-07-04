USE Employee_details;

SELECT *
FROM EmployeeRecords;

SELECT EmployeeID , FirstName
FROM EmployeeRecords 
WHERE EmployeeID = 2;


SELECT *
FROM EmployeeRecords
WHERE Salary >= 70000;

SELECT *
FROM EmployeeRecords
WHERE Salary < 75000;

SELECT 
DISTINCT FirstName, LastName ,Department, Salary
FROM EmployeeRecords
WHERE SALARY < 75000;

SELECT *
FROM EmployeeRecords
ORDER BY Salary DESC ;

SELECT *
FROM EmployeeRecords
ORDER BY Salary ASC;

SELECT *
FROM Employees
ORDER BY Salary DESC;

SELECT *
FROM Employees
ORDER BY Salary ASC;

SELECT *
FROM Employees
ORDER BY FirstName ASC, 
Salary DESC;

SELECT *
FROM Employees
ORDER BY Department ASC,
Salary DESC;

SELECT *
FROM Employees
ORDER BY Department, 
Salary DESC;


SELECT *
FROM EmployeeRecords 
WHERE LastName = 'Miller'
AND EmployeeID != 3;

SELECT *
FROM EmployeeRecords 
WHERE LastName = 'Miller'
AND EmployeeID = 3;

SELECT *
FROM EmployeeRecords
WHERE EmployeeID = 1
OR EmployeeID = 4
AND Department != 'HR';

SELECT *
FROM EmployeeRecords
WHERE Salary = 60000
AND (Department = 'HR'
OR Department = 'Finance');


SELECT *
FROM EmployeeRecords
WHERE FirstName != 'John';

SELECT *
FROM EmployeeRecords
WHERE NOT FirstName = 'Jane';

SELECT *
FROM EmployeeRecords
WHERE NOT FirstName = 'John'
AND NOT Salary = 60000;

SELECT *
FROM EmployeeRecords
WHERE NOT LastName = 'Miller';

SELECT *
FROM EmployeeRecords
WHERE NOT LastName = 'Miller'
OR NOT Department = 'HR';

SELECT *
FROM EmployeeRecords
WHERE Salary >= 75000 
AND Salary <= 85000;

SELECT *
FROM EmployeeRecords
WHERE Salary 
BETWEEN 75000 AND 85000;

SELECT *
FROM EmployeeRecords
WHERE Salary 
NOT BETWEEN 
75000 AND 85000;

SELECT *
FROM EmployeeRecords
WHERE NOT Salary
BETWEEN 
75000 AND 85000;

SELECT *
FROM EmployeeRecords
WHERE 
Department IN ('HR', 'IT');

SELECT *
FROM EmployeeRecords
WHERE NOT 
Department IN ('HR','IT');

SELECT *
FROM Employees;

INSERT INTO Employees
(EmployeeID , FirstName ,LastName, Department , Salary, HireDate)
VALUES (6,'Hiren','Gajjar','CEO',2,'2025-08-01');

SELECT *
FROM Employees;

INSERT INTO Employees 
(EmployeeID ,FirstName ,LastName ,Department, Salary, HireDate)
VALUES (7,'Krupa','Gajjar','CFO',4,'2026-01-01');

INSERT INTO Employees
(EmployeeID ,FirstName,LastName)
VALUES 
(8,'Mona','Patel');

INSERT INTO Employees
VALUES
(9,'Krishna','Vasudev','GOD',0,'1999-01-01'),
(10,'Mahadev','Shiv','GOD',0,'1999-01-01');

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE 
TABLE_NAME = 'Employees';