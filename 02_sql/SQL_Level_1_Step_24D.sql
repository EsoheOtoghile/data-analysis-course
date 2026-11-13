SELECT *
FROM dbo.Employees;

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department = 'IT'

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department = 'Finance'
AND Salary > 35000; 

SELECT *
FROM dbo.Employees
WHERE Department IN ('Finance', 'IT')
AND Salary > 35000;
