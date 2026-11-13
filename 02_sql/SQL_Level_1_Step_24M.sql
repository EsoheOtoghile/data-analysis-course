SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Name LIKE 'S%'
AND Department IN ('Finance', 'IT')
AND Salary > 30000
ORDER BY Salary DESC;


SELECT Name, Department, Salary
FROM dbo.Employees
WHERE Name LIKE 'D%'
AND Department IN ('Finance', 'IT')
AND Salary > 35000
ORDER BY Salary DESC;