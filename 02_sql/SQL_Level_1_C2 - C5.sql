C2

SELECT
    E.Name,
    E.Department,
    E.Salary,
    D.Location
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.Department = D.Department
WHERE E.Department = 'IT'
ORDER BY E.Salary DESC;

C4

SELECT
    E.Name,
    E.Department,
    E.Salary,
    D.Location
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.Department = D.Department
WHERE E.Department = 'Finance'
    OR E.Department = 'Marketing'
ORDER BY E.Department, E.Salary DESC;

C5

SELECT
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees,
    SUM(E.Salary) AS Total_Salary,
    AVG(E.Salary) AS Average_Salary
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.Department = D.Department
GROUP BY D.Location
ORDER BY Total_Salary DESC;





