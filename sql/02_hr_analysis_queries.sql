SELECT * FROM ATTRITION_DATA;
SELECT * FROM SALARY_DATA;
SELECT * FROM EMPLOYEE_DATA;
SELECT * FROM SATISFACTION_DATA;

SELECT COUNT(*) FROM employee_data;
SELECT COUNT(*) FROM salary_data;
SELECT COUNT(*) FROM satisfaction_data;
SELECT COUNT(*) FROM attrition_data;

-- Attrition Rate
SELECT 
    Attrition,
    COUNT(*) AS total,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr_master)), 2) AS percentage
FROM hr_master
GROUP BY Attrition;

-- Attrition by Department
SELECT Department, Attrition, COUNT(*) AS Count
FROM hr_master
GROUP BY Department, Attrition
ORDER BY Department;

-- Attrition by Job Role
SELECT JobRole, Attrition, COUNT(*) AS Count
FROM hr_master
GROUP BY JobRole, Attrition
ORDER BY JobRole;

-- Overtime vs Attrition
SELECT OverTime, Attrition, COUNT(*) AS Count
FROM hr_master
GROUP BY OverTime, Attrition;

-- Average Salary per Department
SELECT Department, AVG(MonthlyIncome)
FROM hr_master
GROUP BY Department;

-- Salary difference between Attrition Yes/No
SELECT Attrition, AVG(MonthlyIncome)
FROM hr_master
GROUP BY Attrition;

-- Job Satisfaction by Attrition
SELECT JobSatisfaction, Attrition, COUNT(*)
FROM hr_master
GROUP BY JobSatisfaction, Attrition
ORDER BY JobSatisfaction DESC;

SELECT * FROM hr_master;













