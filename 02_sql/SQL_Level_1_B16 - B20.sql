B16


SELECT
    Department,
    COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department
HAVING COUNT(*) >= 3
ORDER BY Total_Employees DESC, Department ASC;

B17


SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department
HAVING COUNT(*) >= 3
   AND SUM(Salary) > 120000
ORDER BY Total_Salary DESC;

B18

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department
HAVING COUNT(*) >= 3
    OR SUM(Salary) > 100000
ORDER BY Total_Salary DESC;

B19

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department
HAVING
    (COUNT(*) >= 3 AND SUM(Salary) > 120000)
    OR AVG(Salary) < 38000
ORDER BY Total_Salary DESC;

B20


SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary
FROM Employees
WHERE Salary > 30000
GROUP BY Department
HAVING COUNT(*) >= 2
   AND SUM(Salary) > 70000
ORDER BY Total_Salary DESC;





































