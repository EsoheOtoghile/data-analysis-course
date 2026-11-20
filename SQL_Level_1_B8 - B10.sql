B8

SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END;

    B9

    
SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END;

    B10

    
SELECT
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END AS Salary_Category,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary
FROM Employees
GROUP BY
    CASE
        WHEN Salary > 40000 THEN 'High Salary'
        ELSE 'Standard Salary'
    END;





