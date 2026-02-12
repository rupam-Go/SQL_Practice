Create Database Student;
Use student;
create table Id (
StudentId Int,
StudentFirstName varchar(255),
StudentLastName varchar(255),
Address Varchar(255),
City Varchar(255)
);

select *  from Id;

 -- Changed  the old table Name
Alter Table Student_Id
rename Student_details;

-- Create Another table Using Ol
select StudentID, StudentFirstName, StudentLastName, Addressdtable
from Student_details;

--   Added New Column In Extining Column 
Alter table Student_details
add  Email_details varchar(255);

-- Drop Column from the table 
Alter table Student_details
drop Column Email_details;
 
-- Change the data_type-- 
Alter table Student_details1
Modify Column StudentId varchar(255);


-- Added new constraints
-- Alter Table Student_details
-- ADD Constraint uni_name Unique (StudentId);

--  SELECT
--     CONSTRAINT_NAME,
--     CONSTRAINT_TYPE
-- FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
-- WHERE TABLE_NAME = 'Student_details';
--  
Select * From Student_details;
Select * From Student_details1;


