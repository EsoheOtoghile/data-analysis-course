
SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department = 'IT'
AND Salary > 40000;

SELECT COUNT(*) AS Total_Employees
FROM dbo.Employees
WHERE Department = 'IT'
AND Salary > 40000;

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department = 'Finance'
AND Salary > 35000;

SELECT COUNT(*) AS Total_Employees
FROM dbo.Employees
WHERE Department = 'Finance'
AND Salary > 35000;


SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department = 'Finance'
OR Department = 'IT';

