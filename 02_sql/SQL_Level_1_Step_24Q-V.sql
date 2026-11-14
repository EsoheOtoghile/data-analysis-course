
SELECT SUM(Salary) AS IT_Total_Salary
FROM Employees
WHERE Department = 'IT';


SELECT SUM(Salary) AS Finance_Total_Salary
FROM Employees
WHERE Department = 'Finance';


SELECT AVG(Salary) AS Average_Salary
FROM Employees;


SELECT AVG(Salary) AS IT_Average_Salary
FROM Employees
WHERE Department = 'IT';


SELECT AVG(Salary) AS Finance_Average_Salary
FROM Employees
WHERE Department = 'Finance';


SELECT MIN(Salary) AS Lowest_Salary
FROM Employees;


SELECT MAX(Salary) AS Highest_Salary
FROM Employees;


SELECT
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary,
    AVG(Salary) AS Average_Salary,
    MIN(Salary) AS Lowest_Salary,
    MAX(Salary) AS Highest_Salary
FROM Employees;















