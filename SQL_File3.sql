Create Database Company; 
use Company;
Create table Employee (
Id Varchar(255) Primary key, 
FirstName varchar(255) Not NULL,
LastName varchar(255) Not Null,
Age int,
City varchar(255) default 'Empty'
);
-- Insert the data into Employee table

INSERT INTO Employee (Id, FirstName, LastName, Age)
VALUES 
('E003', 'Neha', 'Verma', 25),
('E004', 'Rahul', 'Singh', 30);


INSERT INTO Employee (Id, FirstName, LastName, Age, city)
VALUES 
('E001', 'Rupam', 'Goswami', 23, 'Kolkata'),
('E002', 'Amit', 'Sharma', 28, 'Delhi');

CREATE INDEX idx_city ON Employee (City);
DROP INDEX idx_city ON Employee;



SELECT * FROM Employee WHERE LastName = 'Goswami';
Select * from Employee 


