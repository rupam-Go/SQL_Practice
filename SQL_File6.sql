create database College;
use College;

Create table Teacher_details(
Id varchar(255) not Null primary key, 
FirstName varchar(255),
LastName Varchar(255),
age int
);

INSERT INTO Teacher_details (Id, FirstName, LastName, Age)
VALUES
('T001', 'Amit', 'Sharma', 35),
('T002', 'Neha', 'Verma', 29),
('T003', 'Rakesh', 'Gupta', 42),
('T004', 'Priya', 'Singh', 31),
('T005', 'Suman', 'Das', 38);

 
 INSERT INTO Teacher_details (Id, FirstName, LastName, Age)
VALUES
('T006', 'Priya', 'Roy', 31);

 -- Use Aggregate Functions
 select Min(age)
 from Teacher_details;
--  Use (Alice)
 select Max(age) as Max_Age
 from Teacher_details;
 
 SELECT MIN(age) AS Minimum_age, FirstName
FROM Teacher_details
GROUP BY FirstName; 
 
 
-- Use of Count value

select Count(*) 
From Teacher_details;

select Count(Id) as Age_Count
from Teacher_details
where age > 35;


-- Ignore duplicates Values Using DISTINCT
select Count(Distinct age) 
from Teacher_details; 

-- use Of Sum function
Select sum(FirstName)
from Teacher_details;


 
 