Create database Mangement;
use Mangement; 
CREATE TABLE Mangement_department(
Id int auto_increment primary key, --  Use of auto-increment 
FirstName varchar(255), 
LastName Varchar(255), 
age int
);
 -- added date in the table
 ALTER TABLE Mangement_department
ADD JoinDate DATE;

-- added data with date 
INSERT INTO Mangement_department (FirstName, LastName, age, JoinDate)
VALUES
('Rupam', 'Goswami', 23, '2023-01-15'),
('Amit', 'Sharma', 28, '2023-06-10'),
('Neha', 'Verma', 26, '2024-02-01'),
('Rohit', 'Das', 30, '2024-08-20'),
('Pooja', 'Singh', 25, '2025-01-05'),
('Ankit', 'Roy', 29, '2025-01-25');

-- use of date query
SELECT *
FROM Mangement_department
WHERE JoinDate > '2024-01-01';


INSERT INTO Mangement_department (FirstName, LastName, age)
VALUES 
('Rupam', 'Goswami', 23),
('Amit', 'Sharma', 28),
('Neha', 'Verma', 26);
 
 
-- Use of the view

CREATE VIEW Management_Name_View AS
SELECT 
    FirstName,
    LastName
FROM Mangement_department;


-- View querty

SELECT * FROM Management_Name_View;

 