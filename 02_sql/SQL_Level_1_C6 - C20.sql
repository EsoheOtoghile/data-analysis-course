C6

SELECT
    E.Name,
    E.Department,
    D.Location
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department
ORDER BY E.Name;

C7

SELECT
    E.Name,
    E.Department,
    D.Location
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department
WHERE D.Department IS NULL
ORDER BY E.Name;


SELECT
    E.Name,
    E.Department,
    D.Location
FROM (
    SELECT
        'Example Employee' AS Name,
        'Legal' AS Department
) AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department;

    C8
    
SELECT
    E.Name,
    E.Department,
    E.Salary,
    D.Location
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department
WHERE E.Salary > 40000
ORDER BY E.Salary DESC;

C9

SELECT
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees,
    SUM(E.Salary) AS Total_Salary
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department
GROUP BY D.Location
ORDER BY Total_Salary DESC;

C10

SELECT
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees,
    SUM(E.Salary) AS Total_Salary
FROM Employees AS E
LEFT JOIN Departments AS D
    ON E.Department = D.Department
GROUP BY D.Location
HAVING COUNT(E.Employee_ID) >= 2
   AND SUM(E.Salary) > 80000
ORDER BY Total_Salary DESC;

C11

SELECT
    D.Department,
    D.Location,
    E.Name AS Employee_Name
FROM Employees AS E
RIGHT JOIN Departments AS D
    ON E.Department = D.Department
ORDER BY D.Department, E.Name;

C12

SELECT
    D.Department,
    D.Location,
    E.Name AS Employee_Name
FROM Employees AS E
RIGHT JOIN Departments AS D
    ON E.Department = D.Department
WHERE E.Employee_ID IS NULL;


SELECT
    D.Department,
    D.Location,
    E.Name AS Employee_Name
FROM Employees AS E
RIGHT JOIN
(
    SELECT Department, Location
    FROM Departments

    UNION ALL

    SELECT 'Legal', 'Glasgow'
) AS D
    ON E.Department = D.Department
WHERE E.Employee_ID IS NULL;

C13

SELECT
    D.Department,
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees
FROM Employees AS E
RIGHT JOIN Departments AS D
    ON E.Department = D.Department
GROUP BY
    D.Department,
    D.Location
ORDER BY Total_Employees DESC;



C14

SELECT
    D.Department,
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees
FROM Employees AS E
RIGHT JOIN
(
    SELECT Department, Location
    FROM Departments

    UNION ALL

    SELECT 'Legal', 'Glasgow'
) AS D
    ON E.Department = D.Department
GROUP BY
    D.Department,
    D.Location
HAVING COUNT(E.Employee_ID) < 3
ORDER BY Total_Employees DESC;

C15

SELECT
    E.Employee_ID,
    E.Name AS Employee_Name,
    E.Department AS Employee_Department,
    D.Department AS Department_Name,
    D.Location
FROM Employees AS E
FULL OUTER JOIN Departments AS D
    ON E.Department = D.Department
ORDER BY E.Employee_ID;

C16

SELECT
    E.Employee_ID,
    E.Name AS Employee_Name,
    E.Department AS Employee_Department,
    D.Department AS Department_Name,
    D.Location
FROM Employees AS E
FULL OUTER JOIN Departments AS D
    ON E.Department = D.Department
WHERE E.Employee_ID IS NULL
   OR D.Department IS NULL;


WITH EmployeeData AS
(
    SELECT Employee_ID, Name, Department
    FROM Employees

    UNION ALL

    SELECT 'E011', 'Example Employee', 'Operations'
),
DepartmentData AS
(
    SELECT Department, Location
    FROM Departments

    UNION ALL

    SELECT 'Legal', 'Glasgow'
)
SELECT
    E.Employee_ID,
    E.Name AS Employee_Name,
    E.Department AS Employee_Department,
    D.Department AS Department_Name,
    D.Location
FROM EmployeeData AS E
FULL OUTER JOIN DepartmentData AS D
    ON E.Department = D.Department
WHERE E.Employee_ID IS NULL
   OR D.Department IS NULL
ORDER BY E.Employee_ID;


WITH EmployeeData AS
(
    SELECT Employee_ID, Name, Department
    FROM Employees

    UNION ALL

    SELECT 'E011', 'Example Employee', 'Operations'
),
DepartmentData AS
(
    SELECT Department, Location
    FROM Departments

    UNION ALL

    SELECT 'Legal', 'Glasgow'
)
SELECT
    COALESCE(D.Department, E.Department) AS Department,
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees
FROM EmployeeData AS E
FULL OUTER JOIN DepartmentData AS D
    ON E.Department = D.Department
GROUP BY
    COALESCE(D.Department, E.Department),
    D.Location
ORDER BY Total_Employees DESC;


WITH EmployeeData AS
(
    SELECT Employee_ID, Name, Department
    FROM Employees

    UNION ALL

 C18
 
WITH EmployeeData AS
(
    SELECT Employee_ID, Name, Department
    FROM Employees

    UNION ALL

    SELECT 'E011', 'Example Employee', 'Operations'
),
DepartmentData AS
(
    SELECT Department, Location
    FROM Departments

    UNION ALL

    SELECT 'Legal', 'Glasgow'
)
SELECT
    COALESCE(D.Department, E.Department) AS Department,
    D.Location,
    COUNT(E.Employee_ID) AS Total_Employees
FROM EmployeeData AS E
FULL OUTER JOIN DepartmentData AS D
    ON E.Department = D.Department
GROUP BY
    COALESCE(D.Department, E.Department),
    D.Location
HAVING COUNT(E.Employee_ID) < 2
ORDER BY Total_Employees DESC;

C19

SELECT
    E.Employee_ID,
    E.Name AS Employee_Name,
    D.Department,
    D.Location
FROM Employees AS E
CROSS JOIN Departments AS D
ORDER BY E.Employee_ID, D.Department;


SELECT
    COUNT(*) AS Total_Combinations
FROM Employees AS E
CROSS JOIN Departments AS D;

C20

SELECT
    E.Employee_ID,
    E.Name AS Employee_Name,
    E.Department AS Current_Department,
    D.Department AS Possible_Department,
    D.Location,
    E.Salary
FROM Employees AS E
CROSS JOIN Departments AS D
WHERE E.Salary > 40000
  AND E.Department <> D.Department
ORDER BY E.Employee_ID, D.Department;


SELECT
    COUNT(*) AS Total_Possible_Transfers
FROM Employees AS E
CROSS JOIN Departments AS D
WHERE E.Salary > 40000
  AND E.Department <> D.Department;


























































































