SELECT Name, Department, Salary, Years_Experience
FROM dbo.Employees;

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department IN ('Finance', 'IT', 'HR');

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Salary >= 40000;

SELECT Name, Department, Salary, Years_Experience
FROM dbo.Employees
WHERE Years_Experience >= 5;

SELECT Name, Department, Salary, Years_Experience
FROM dbo.Employees
WHERE Department IN ('Finance', 'IT', 'HR')
AND Salary >= 40000
AND Years_Experience >= 5;

