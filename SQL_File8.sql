create database Company;
Use Company;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
); 
-- Insert the value of the table
INSERT INTO Departments VALUES
(1, 'HR', 'Delhi'),
(2, 'IT', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Sales', 'Kolkata');


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Gender VARCHAR(10),
    Salary DECIMAL(10,2),
    HireDate DATE,
    DepartmentID INT,
    ManagerID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert the value Into table
INSERT INTO Employees VALUES
(101, 'Rohit Sharma', 'Male', 60000, '2021-01-15', 2, NULL),
(102, 'Priya Sen', 'Female', 45000, '2022-03-10', 1, 101),
(103, 'Amit Das', 'Male', 75000, '2020-07-20', 2, 101),
(104, 'Sneha Roy', 'Female', 50000, '2023-02-18', 3, 101),
(105, 'Arjun Singh', 'Male', 40000, '2022-09-25', 4, 103),
(106, 'Neha Kapoor', 'Female', 80000, '2019-11-11', 3, NULL),
(107, 'Vikas Gupta', 'Male', 55000, '2021-06-30', 4, 103),
(108, 'Anjali Mehta', 'Female', 47000, '2023-01-05', 1, 101);


CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100),
    DepartmentID INT,
    Budget DECIMAL(12,2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- insert the value into tables
INSERT INTO Projects VALUES
(201, 'Website Redesign', 2, 500000),
(202, 'Payroll System', 1, 200000),
(203, 'Investment Audit', 3, 300000),
(204, 'Sales Expansion', 4, 400000);


CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    HoursWorked INT,
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
-- Insert value into the tables
INSERT INTO EmployeeProjects VALUES
(101, 201, 120),
(103, 201, 150),
(102, 202, 80),
(108, 202, 60),
(104, 203, 100),
(106, 203, 200),
(105, 204, 90),
(107, 204, 110);


-- Union statement
Select DepartmentName from Departments
Union 
select EmployeeName From Employees
Order by DepartmentName;

-- use Of Group By
 select Count(Gender),EmployeeName
from Employees
Group by EmployeeName;

-- use of Having 
SELECT DepartmentID, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) > 60000;

-- // use of  Exists
 SELECT EmployeeName
FROM Employees E
WHERE EXISTS (
    SELECT 1 
    FROM EmployeeProjects EP
    WHERE E.EmployeeID = EP.EmployeeID
);
 
SELECT EmployeeName, Salary
FROM Employees
WHERE Salary  < ANY (
    SELECT Salary
    FROM Employees
    WHERE DepartmentId = 1
);


