CREATE DATABASE FoodDB;

USE FoodDB;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    FoodItem VARCHAR(100),
    Quantity INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


INSERT INTO Customers (CustomerName, City)
VALUES
('Rahul', 'Chennai'),
('Priya', 'Coimbatore'),
('Arun', 'Madurai'),
('Divya', 'Salem');

INSERT INTO Orders (CustomerID, FoodItem, Quantity, TotalAmount)
VALUES
(1, 'Pizza', 2, 598.00),
(1, 'Burger', 1, 149.00),
(2, 'Coke', 3, 147.00),
(3, 'Ice Cream', 2, 240.00);



SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.FoodItem,
    Orders.TotalAmount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.FoodItem
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.FoodItem
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;



SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.FoodItem
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Orders.OrderID,
    Orders.FoodItem
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;