CREATE DATABASE hr_analytics;
USE hr_analytics;

CREATE TABLE employee_data (
    EmployeeNumber INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    MaritalStatus VARCHAR(20),
    BusinessTravel VARCHAR(50),
    Education INT,
    EducationField VARCHAR(50),
    Department VARCHAR(50),
    JobRole VARCHAR(50),
    TotalWorkingYears INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
    NumCompaniesWorked INT,
    DistanceFromHome INT,
    TrainingTimesLastYear INT
);

CREATE TABLE salary_data (
    EmployeeNumber INT PRIMARY KEY,
    JobLevel INT,
    MonthlyIncome INT,
    MonthlyRate INT,
    DailyRate INT,
    HourlyRate INT,
    PercentSalaryHike INT,
    StockOptionLevel INT,
    PerformanceRating INT,
	CONSTRAINT fk_sal_emp
	Foreign Key (EmployeeNumber)
    REFERENCES employee_data(EmployeeNumber)
);

CREATE TABLE satisfaction_data (
    EmployeeNumber INT PRIMARY KEY,
    JobInvolvement INT,
    JobSatisfaction INT,
    EnvironmentSatisfaction INT,
    WorkLifeBalance INT,
    RelationshipSatisfaction INT,
    CONSTRAINT fk_satis_emp
	Foreign Key (EmployeeNumber)
    REFERENCES employee_data(EmployeeNumber)
);

CREATE TABLE attrition_data (
    EmployeeNumber INT PRIMARY KEY,
    Attrition VARCHAR(10),
    OverTime VARCHAR(10),
    CONSTRAINT fk_attri_emp
	Foreign Key (EmployeeNumber)
    REFERENCES employee_data(EmployeeNumber)
);

CREATE OR REPLACE VIEW hr_master AS
SELECT 
    e.EmployeeNumber,
    e.Age,
    e.Gender,
    e.MaritalStatus,
    e.BusinessTravel,
    e.Education,
    e.EducationField,
    e.Department,
    e.JobRole,
    e.TotalWorkingYears,
    e.YearsAtCompany,
    e.YearsInCurrentRole,
    e.YearsSinceLastPromotion,
    e.YearsWithCurrManager,
    e.NumCompaniesWorked,
    e.DistanceFromHome,
    e.TrainingTimesLastYear,

    s.JobLevel,
    s.MonthlyIncome,
    s.MonthlyRate,
    s.DailyRate,
    s.HourlyRate,
    s.PercentSalaryHike,
    s.StockOptionLevel,
    s.PerformanceRating,

    sa.JobInvolvement,
    sa.JobSatisfaction,
    sa.EnvironmentSatisfaction,
    sa.WorkLifeBalance,
    sa.RelationshipSatisfaction,

    a.Attrition,
    a.OverTime

FROM employee_data e
LEFT JOIN salary_data s USING(EmployeeNumber)
LEFT JOIN satisfaction_data sa USING(EmployeeNumber)
LEFT JOIN attrition_data a USING(EmployeeNumber);
