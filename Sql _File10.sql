CREATE DATABASE ECommerceDB;
USE ECommerceDB;

CREATE TABLE Customers (
    CustomerID VARCHAR(5) PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);
-- Insert the data
INSERT INTO Customers VALUES
('C001','Rupam','Kolkata'),
('C002','Amit','Delhi'),
('C003','Sneha','Mumbai'),
('C004','Rahul','Bangalore'),
('C005','Priya','Chennai');



CREATE TABLE Products (
    ProductID VARCHAR(5) PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
-- Insert the data into table

INSERT INTO Products VALUES
('P101','Laptop','Electronics',60000),
('P102','Phone','Electronics',25000),
('P103','Shoes','Fashion',3000),
('P104','Watch','Accessories',5000),
('P105','Shirt','Fashion',1500);



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID VARCHAR(5),
    ProductID VARCHAR(5),
    Quantity INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert the data into table
INSERT INTO Orders VALUES
(1001,'C001','P101',1,'2026-01-01'),
(1002,'C002','P102',2,'2026-01-02'),
(1003,'C003','P103',3,'2026-01-03'),
(1004,'C002','P101',1,'2026-01-05'),
(1005,'C004','P104',2,'2026-01-06'),
(1006,'C005','P105',4,'2026-01-07'),
(1007,'C001','P102',1,'2026-01-08'),
(1008,'C003','P104',1,'2026-01-10');



-- Copy the data another table
Create table CustomersBackup As 
select * from Customers;

INSERT INTO CustomersBackup
SELECT * FROM Customers; 

select * from CustomersBackup;
Drop table  CustomersBackup;

--  Create Table  ProductsBackup as
--  select *  from Products;

CREATE TABLE ProductsBackup AS
SELECT ProductID, ProductName
FROM Products;
 

INSERT INTO ProductsBackup (ProductID, ProductName) 
SELECT ProductID, ProductName 
FROM Products; 

select * from ProductsBackup;	
select  * from Products;
Drop table ProductsBackup; 


Select OrderId,Quantity,
Case 
    when Quantity > 1 Then 'Quntity is greter than 1'
    WHEN Quantity  = 1 Then 'The quntity is 1'
    else 'The quntity is unwder 1 '
    end as QuntityText
    from Orders; 
    
    
    select CustomerName, CustomerId, City
    From customers
    Order BY
    (
    CASE 
    WHEN CITY IS NULL THEN CustomerName
    else City
    end);
    
    
    -- Sql stored Procedures For Sql server
 DELIMITER 

CREATE PROCEDURE selectAllCustomers()
BEGIN
    SELECT * FROM Customers;
END 

DELIMITER ;
 
 
CALL selectAllCustomers();
