DROP DATABASE IF EXISTS Company;
CREATE DATABASE Company;
USE Company;

-- Table: Employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name TEXT,
    Department TEXT,
    Salary INT
);

-- Table: Departments
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName TEXT,
    Location TEXT
);

INSERT INTO Employees(EmpID, Name, Department, Salary)
VALUES 
(1, 'Walt', 'HR', 70000),
(2, 'Max', 'Production', 50000),
(3, 'Skylar', 'Finance', 65000),
(4, 'John', 'Sales', 55000),
(5, 'Will', 'Software', 60000);

INSERT INTO Departments (DeptID, DeptName, Location)
VALUES 
(101, 'HR', 'Bangaluru'),
(102, 'Production', 'Hyderabad'),
(103, 'Finance', 'Delhi'),
(104, 'Sales', 'Mumbai'); 

-- View to filter and display employees earning above ₹60,000
CREATE VIEW HighSalaryEmployees AS 
SELECT Name, Department, Salary
FROM Employees
WHERE Salary>60000;

SELECT * FROM HighSalaryEmployees;

-- View to combine employee and department details using JOIN.
CREATE VIEW EmployeeDepartmentInfo AS
SELECT e.EmpID, e.Name, e.Salary, d.DeptName, d.Location
FROM Employees e
JOIN Departments d ON e.Department = d.DeptName;
 
SELECT * FROM EmployeeDepartmentInfo
WHERE Location = 'Hyderabad';


DROP VIEW IF EXISTS PublicEmployeeInfo;
-- View to expose only non-sensitive employee details.
-- Useful for abstraction and restricting access to salary data
CREATE VIEW PublicEmployeeInfo AS
SELECT EmpID, Name, Department
FROM Employees;

SELECT * FROM PublicEmployeeInfo;
 


