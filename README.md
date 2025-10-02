 # SQL Developer Internship - Task 7

This repository contains the solution for **Task 7: Creating Views in SQL** from the SQL Developer Internship program.

---

## 📝 Task Overview
**Objective:** Learn to create and use SQL views for abstraction, security, and reusable logic.  

**Tools Used:**  
- MySQL Workbench  

**Deliverables:**  
- SQL script with table creation and sample data  
- View definitions (Filtered, Joined, Secure)  
- Usage examples

---
## 📂 Files in this Repository
- **sql-task-7.sql** → SQL script containing table setup, sample data, and four view definitions.
- **Task Screenshot** → Reference error output and join behavior.

## 🗂️ Database & Tables

The database includes two tables: **Employees** and **Departments**.

```sql
CREATE DATABASE Company;
USE Company;
```
```sql
CREATE TABLE Employees (
  EmpID INT PRIMARY KEY,
  Name TEXT,
  Department TEXT,
  Salary INT
);
```

```sql
CREATE TABLE Departments (
  DeptID INT PRIMARY KEY,
  DeptName TEXT,
  Location TEXT
);
```

📥 Sample Data
sql
```sql
INSERT INTO Employees (EmpID, Name, Department, Salary) VALUES
  (1, 'Walt', 'HR', 70000),
  (2, 'Max', 'Production', 50000),
  (3, 'Skylar', 'Finance', 65000),
  (4, 'John', 'Sales', 55000),
  (5, 'Will', 'Software', 60000);

INSERT INTO Departments (DeptID, DeptName, Location) VALUES
  (101, 'HR', 'Bangaluru'),
  (102, 'Production', 'Hyderabad'),
  (103, 'Finance', 'Delhi'),
  (104, 'Sales', 'Mumbai');
```

💻 Views Implementation with Screenshots:

🔹 1. Filtered View – High Salary Employees
```sql
-- View to filter and display employees earning above ₹60,000.
CREATE VIEW HighSalaryEmployees AS
SELECT Name, Department, Salary
FROM Employees
WHERE Salary > 60000;

-- Show employees with high salary
SELECT * FROM HighSalaryEmployees;
```
<img src= "https://github.com/user-attachments/assets/a68c06be-718d-40cd-950a-4fb9da9a26bd" width="45%" />
<img src= "https://github.com/user-attachments/assets/ff927c21-bf4d-438d-9796-dfe4ce3eb89e" width="45%" />


🔹 2. Joined View – Employee Department Info
```sql
-- View to combine employee and department details using JOIN.
CREATE VIEW EmployeeDepartmentInfo AS
SELECT e.EmpID, e.Name, e.Salary, d.DeptName, d.Location
FROM Employees e
JOIN Departments d ON e.Department = d.DeptName;

-- Show employee and department info
SELECT * FROM EmployeeDepartmentInfo;
```
<img src= "https://github.com/user-attachments/assets/58fe354b-0b2a-44ba-ae3f-20b0c67c6cee" width="45%" />
<img src= "https://github.com/user-attachments/assets/e7d5f8e7-c352-465e-a46d-74651ffdab10" width="45%" />


🔹 3. Joined View – Specific Employee Department Info
```sql
-- View to display employee details along with department location using JOIN.
-- Filters the result to show only employees working in Hyderabad.
CREATE VIEW EmployeeDepartmentInfo AS
SELECT e.EmpID, e.Name, e.Salary, d.DeptName, d.Location
FROM Employees e
JOIN Departments d ON e.Department = d.DeptName;

-- Show employee and department info
SELECT * FROM EmployeeDepartmentInfo
WHERE Location = 'Hyderabad';
```
<img src= "https://github.com/user-attachments/assets/d37f6adb-4cd7-413f-aefd-abdb99256497" width="45%" />
<img src= "https://github.com/user-attachments/assets/50671aad-003d-42d5-9a3f-3b16078c0cc3" width="45%" />


🔹 4. Secure View – Public Employee Info
```sql
-- View to expose only non-sensitive employee details.
CREATE VIEW PublicEmployeeInfo AS
SELECT EmpID, Name, Department
FROM Employees;

-- Show only public employee info
SELECT * FROM PublicEmployeeInfo;
```
<img src= "https://github.com/user-attachments/assets/0626699a-b77c-4b87-9915-9b664f1d9d76" width="45%" />
<img src= "https://github.com/user-attachments/assets/a651b0b4-96fc-47fc-816b-e60c2aaa1611" width="45%" />

---
## 📌 Key Learnings
- Views simplify complex queries and improve readability.
- Views are dynamic — they always reflect the latest data from base tables.
- Useful for abstraction, filtering, and restricting sensitive columns.
- Provide security by exposing only required information.
---

✅ ** Completed Task 7: Creating Views In SQL **

