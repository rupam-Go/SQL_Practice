create database Custommers;
Use Custommers; 

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR (100),
    City VARCHAR(50)
);

-- // Insert the data Into table
INSERT INTO Customers VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Ananya', 'Kolkata'),
(3, 'Amit', 'Mumbai'),
(4, 'Pooja', 'Patna');



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

-- // Insert the data Into table

INSERT INTO Orders VALUES
(101, 1, '2024-01-05'),
(102, 2, '2024-01-06'),
(103, 1, '2024-01-10'),
(104, 5, '2024-01-12');



CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10,2)
);
-- // Insert the data Into table

INSERT INTO Payments VALUES
(1, 101, 'UPI', 60000),
(2, 102, 'Card', 25000),
(3, 105, 'Cash', 3000);

-- Inner Join of two tables 
Select c.CustomerName, o.orderId
From Customers c
Inner Join Orders o
On c.CustomnerId = o.orderId;



select c.City,o.CustomerId
From Customers c
Inner Join Orders o
On c.CustomerId = o.orderId;


SELECT c.City AS customer_City,
       o.CustomerId AS customer_id_orders
FROM Customers c
INNER JOIN Orders o
ON c.CustomerID = o.CustomerID;


select o.OrderID,p.Amount
From Orders o
Inner Join Payments p
On o.OrderID = p.OrderID;

-- // How to show the data
Select o.OrderID AS orders_OrderId,
       p.Amount As Customer_Amount
       From Orders o
       Inner Join Payments p
       On o.OrderID = p.OrderId;

Select c.CustomerName, o.OrderDate
From Customers c
Inner Join Orders o
On c.CustomerId = o.CustomerId;

select c.CustomerName As Customer_Name,
       o.orderdate As order_Date
	From Customers c
	Inner Join Orders o
    On c.CustomerId = o.CustomerId;
	

-- 3 Tables Joining 

Select 
c.customerName,
o.orderId,
p.paymentMethod,
p.Amount
From customers c 
Inner Join Orders o
On o.CustomerId = c.CustomerId
Inner Join  Payments p
On o.orderId = p.orderId;
       

select c.CustomerName,o.OrderId
From Customers c
Inner Join Orders o
On c.CustomerId = o.CustomerId;


Select o.orderId,p.PaymentMethod
From Orders o
Left Join Payments p
On o.OrderId = p.OrderId; 

select c.CustomerName,o.OrderId
From Customers c
Left Join Orders o
On c.customerId = o.CustomerId; 

-- ///// 3 tables Left Join

Select 
c.CustomerName,
c.city,
o.OrderDate,
p.Amount, 
P.PaymentMethod
From Customers c
Left Join Orders o
On c.CustomerId = o.CustomerId
Left Join Payments p
On o.orderId = p.orderID;


Select c.customerName,
o.OrderID,
p.PaymentMethod
From Customers c
Right Join Orders o
On c.CustomerId = o.customerId
Right Join Payments p
On o.orderID = p.orderId;


-- Cross Join 
 select c.CustomerName,o.orderID,p.Amount,c.city
 from Customers c
 Cross Join Orders o
 Cross Join Payments p;


       
select * from Customers;



-- /// self Join\
select A.CustomerName As CustomerName1, B.customerName As CustomerName2
From Customers A, Customers B
Where A.CustomerId <> B.CustomerId
And A.city = B.City 
order by A.city;