
SELECT COUNT(*) AS Total_Employees
FROM Employees;


SELECT COUNT(*) AS IT_Employees
FROM Employees
WHERE Department = 'IT';


SELECT SUM(Salary) AS Total_Salary
FROM Employees;



