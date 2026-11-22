C1.1


SELECT
    TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;

C1.2

CREATE TABLE Departments (
    Department VARCHAR(50) PRIMARY KEY,
    Location VARCHAR(50)
);

C1.3

INSERT INTO Departments (Department, Location)
VALUES
    ('Finance', 'London'),
    ('IT', 'Manchester'),
    ('HR', 'Birmingham'),
    ('Marketing', 'Edinburgh');

    C1.4
    
SELECT *
FROM Departments
ORDER BY Department;

C1.5

SELECT
    E.Name,
    E.Department,
    D.Location
FROM Employees AS E
INNER JOIN Departments AS D
    ON E.Department = D.Department
ORDER BY E.Name;













