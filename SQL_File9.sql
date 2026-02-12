Create database Collge;
USE Collge;
-- Create table As a College_details

 Create table College_details
 (
 Id int Not null,
FirtName varchar(255),
LastName varchar(255), 
Age int,
Email Varchar(255)

);

INSERT INTO College_details (Id, FirtName, LastName, Age, Email)
VALUES
(1, 'Rupam', 'Goswami', 22, 'rupam.goswami@gmail.com'),
(2, 'Amit', 'Sharma', 21, 'amit.sharma@gmail.com'),
(3, 'Neha', 'Verma', 23, NULL),
(4, 'Priya', 'Singh', 20, 'priya.singh@gmail.com'),
(5, 'Rahul', 'Das', 24, NULL);
-- when Just wamt see the specificed column
select Id,FirtName from College_details;

-- use Of distinct
 SELECT COUNT(DISTINCT Id) FROM College_details;
 -- use of where
Select * from College_details
where Id = 1;
select * from College_details
where Email is  Null;
select * from College_details
where Email is  Null;

-- Use Of order By
select Id,FirtName from College_details
Order by Id;
select Id,FirtName from College_details
Order by Id Desc, FirtName Asc;
-- use of Operator  
select * from College_Details
Where FirtName Like "R%"  and Id =1;
  
-- Not Operator
select * from College_details
where age not between 22 and 26;

select * from College_details
where age > 22;


-- SQL TOP, LIMIT, FETCH FIRST or ROWNUM Clause
SELECT * FROM  College_details
LIMIT 3;

SELECT * FROM  College_details
WHERE age = 23
LIMIT 3; 