SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Department NOT IN ('IT', 'HR')
AND Salary > 35000
ORDER BY Salary DESC;

SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Salary BETWEEN 35000 AND 50000
ORDER BY Salary ASC;

