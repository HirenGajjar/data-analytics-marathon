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

###### 98 Temporary Tables

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

Any table with single # will not be recognized in new query window.

Secondly we wrote [dbo].[Employees] - that is one way to do it in MSSM. But we dont have to. We can simply use the Employees

It will be usefull when we have too many dbs and tables then we can do something similar.

We can simply write FROM Employees and it works fine.

```
SELECT *
INTO #temp_2
FROM Employees;
```

We can use ## to create temp tables like

```
SELECT *
INTO ##temp_emp_records
FROM EmployeeRecords;
```

Here when we open up the new query window this will be recongnized and will executed, it will also be recongized in other instances as well as the original instace is oepn and running (basically session like scenario.)

---

###### 99 WHERE

---

###### 100 ORDER BY

DESC

ASC - The default value

---

###### 101 AND OR

```sql
SELECT *
FROM EmployeeRecords
WHERE EmployeeID = 1
OR EmployeeID = 4
AND Department = 'HR';
```

Now here we will have all the rows that has ID = 1 + (all the records that has ID 4 AND ) both of thses has to be a true.

---

###### 102 NOT BETWEEN IN

```sql
WHERE Salary != 50000

-- Same

WHERE NOT Salary = 50000
```

In Between both of the values are inclusive. But we cannot do Salary BETWEEN 10000 OR 30000; That is invalid.

---

###### INSERT INTO

⚠⚠
