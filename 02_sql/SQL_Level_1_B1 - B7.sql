B1

SELECT DISTINCT Department
FROM Employees;

B2

SELECT DISTINCT Department
FROM Employees
WHERE Salary > 40000;

B3

SELECT DISTINCT Department
FROM Employees
ORDER BY Department ASC;

B3

SELECT DISTINCT Department
FROM Employees
ORDER BY Department DESC;

B4

SELECT COUNT(DISTINCT Department) AS Total_Departments
FROM Employees;

B5

SELECT COUNT(DISTINCT Department) AS Total_Departments
FROM Employees
WHERE Salary > 40000;

B6


SELECT
    CASE
        WHEN Salary > 40000 THEN 'Above 40000'
        ELSE '40000 or Below'
    END AS Salary_Category,
    COUNT(DISTINCT Department) AS Total_Departments
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'Above 40000'
        ELSE '40000 or Below'
    END;

    B7

    
SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END;


































