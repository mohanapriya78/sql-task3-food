CREATE DATABASE FoodDB;


USE FoodDB;


CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50)
);

CREATE TABLE FoodItems (
    FoodID INT PRIMARY KEY AUTO_INCREMENT,
    FoodName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

INSERT INTO Categories (CategoryName)
VALUES
('Fast Food'),
('Beverages'),
('Desserts');

INSERT INTO FoodItems (FoodName, Price, Stock, CategoryID)
VALUES
('Pizza',299.00,20,1),
('Burger',149.00,35,1),
('French Fries',99.00,50,1),
('Coke',49.00,80,2),
('Juice',79.00,40,2),
('Ice Cream',120.00,25,3),
('Cake',250.00,15,3);



SELECT FoodName, Price
FROM FoodItems
WHERE Price >
(
    SELECT AVG(Price)
    FROM FoodItems
);


SELECT FoodName, Price
FROM FoodItems
WHERE CategoryID IN
(
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Desserts'
);


SELECT CategoryName
FROM Categories c
WHERE EXISTS
(
    SELECT *
    FROM FoodItems f
    WHERE f.CategoryID = c.CategoryID
);

SELECT FoodName, Price
FROM FoodItems
WHERE Price =
(
    SELECT MAX(Price)
    FROM FoodItems
);


SELECT
FoodName,
Price,
(
    SELECT AVG(Price)
    FROM FoodItems
) AS AveragePrice
FROM FoodItems;



SELECT *
FROM
(
    SELECT FoodName, Price
    FROM FoodItems
    WHERE Price > 100
) AS ExpensiveFoods;


SELECT FoodName, Price, CategoryID
FROM FoodItems f
WHERE Price >
(
    SELECT AVG(Price)
    FROM FoodItems
    WHERE CategoryID = f.CategoryID
);