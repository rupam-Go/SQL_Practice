Create Database Teacher;
Use Teacher;
 
 -- Create A table Under Teacher Database 
 Create Table Teacher_details (
 Id  int Not Null, -- [Copnstraints]-- The value will be never Null 
 FisrtName varchar(255),
 LastName Varchar(255),
 Age int 
 );
 -- Insert the data In Teacher_details
 INSERT INTO Teacher_details (Id, FisrtName, LastName, Age)
VALUES
(101, 'Anil', 'Kumar', 35),
(102, 'Sunita', 'Sharma', 42),
(103, 'Ramesh', 'Das', 29),
(104, 'Priya', 'Sen', 38),
(105, 'Amit', 'Ghosh', 45);
 
-- Create A table For Student_details // Refereed Foregin key 
Create Table Student_details( 
Id int Not nULL unique,
FisrtName varchar(255),
LastName Varchar(255), 
Age Int,
Primary key(Id),
 FOREIGN KEY (Id) REFERENCES Student_details(Id));
 
--  iNSERT THE VALUE into Student_details

 INSERT INTO Student_details (Id, FisrtName, LastName, Age)
VALUES
(1, 'Rupam', 'Goswami', 22),
(2, 'Anita', 'Sharma', 21),
(3, 'Rahul', 'Verma', 23),
(4, 'Sneha', 'Das', 20),
(5, 'Amit', 'Patel', 24);




-- Unique Constrints
ALTER TABLE Teacher_details
ADD CONSTRAINT UQ_Teacher_Id UNIQUE (Id);

-- Added Primarykey
Alter Table Teacher_details
Add Constraint Pri_Key_Id Primary key(Id);
 
 
 Alter Table student_details 
 Add check (Age >= 30);
 
 
 
 -- How To check Constraints Details
 SELECT
    CONSTRAINT_NAME,
    CONSTRAINT_TYPE
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'Teacher_details';


 -- How To check Constraints Details 
 SELECT
    CONSTRAINT_NAME,
    CONSTRAINT_TYPE
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'Student_details'; 
 
 Select * from Teacher_details;
 Select * from student_details;
 
 