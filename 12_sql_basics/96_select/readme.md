###### SELECT

There are two ways to give an alias to a column in MSSM Studio.

```sql
SELECT EmployeeID,
CONCAT(FirstName, " ",LastName) AS "FullName"
FROM Employees;
```

or

```sql
SELECT EmployeeID,
CONCAT(FirstName, " ",LastName) [Full_Name]
FROM Employees;
```

Either Use AS or []
