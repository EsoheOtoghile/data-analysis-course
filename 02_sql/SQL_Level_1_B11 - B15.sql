B11

SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END;

    B12
    
SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END
ORDER BY Total_Salary DESC

B13

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 100000
ORDER BY Total_Salary DESC;

B14

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 40000
ORDER BY Average_Salary DESC;

B15

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary
FROM Employees
WHERE Salary > 35000
GROUP BY Department
HAVING COUNT(*) >= 2
ORDER BY Total_Salary DESC;






























