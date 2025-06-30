###### 96

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

---

###### 97

DISTINCT

---

###### Temporary Tables

INTO keyword

We created a new temporary table called #temp1.

We created this table using INTO keyword.

Here is how

```
SELECT *
INTO #temp1
FROM [dbo].[Employees];
```

Here the name can be simply anything for temparary table - use of # is a syntax.

Secondly we wrote [dbo].[Employees] - that is one way to do it in MSSM. But we dont have to. We can simply use the Employees

It will be usefull when we have too many dbs and tables then we can do something similar.

We can simply write FROM Employees and it works fine.

```
SELECT *
INTO #temp_2
FROM Employees;
```
