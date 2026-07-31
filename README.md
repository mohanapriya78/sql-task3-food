# Food Ordering System - SQL Query Operations

## 📌 Project Overview

This project demonstrates fundamental and advanced SQL concepts using a **Food Ordering System** database. It includes data retrieval, filtering, sorting, aggregation, grouping, table joins, and subqueries. The project is designed to build a strong foundation in SQL and improve database querying skills.

---

## 🎯 Objectives

### Task 3 – Writing Basic SELECT Queries
- Retrieve data using `SELECT`.
- Filter records using `WHERE`.
- Apply `AND`, `OR`, `LIKE`, and `BETWEEN`.
- Sort data using `ORDER BY`.
- Limit query results using `LIMIT`.

### Task 4 – Aggregate Functions and Grouping
- Use aggregate functions (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`).
- Group records using `GROUP BY`.
- Filter grouped data using `HAVING`.

### Task 5 – SQL Joins
- Combine data from multiple related tables.
- Use `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN` (using `UNION` in MySQL).

### Task 6 – Subqueries and Nested Queries
- Use scalar and correlated subqueries.
- Apply subqueries in `SELECT`, `WHERE`, and `FROM`.
- Use subqueries with `IN`, `EXISTS`, and `=` operators.

---

## 🛠️ Tools Used

- MySQL Workbench
- DB Browser for SQLite
- SQL
- GitHub

---

## 📂 Project Structure

```
Food-Ordering-System/
│
├── Task3.sql
├── Task4.sql
├── Task5.sql
├── Task6.sql
├── README.md
└── FoodDB.sql (Optional)
```

---

## 🗄️ Database Tables

### Categories
- CategoryID
- CategoryName

### FoodItems
- FoodID
- FoodName
- Price
- Stock
- CategoryID

### Customers
- CustomerID
- CustomerName
- City

### Orders
- OrderID
- CustomerID
- FoodItem
- Quantity
- TotalAmount

---

## 📚 SQL Concepts Covered

### Task 3 – Basic SELECT Queries
- SELECT *
- SELECT specific columns
- WHERE
- AND
- OR
- LIKE
- BETWEEN
- ORDER BY
- LIMIT

### Task 4 – Aggregate Functions and Grouping
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- GROUP BY
- HAVING

### Task 5 – SQL Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN (using UNION)
- Primary Key
- Foreign Key

### Task 6 – Subqueries and Nested Queries
- Scalar Subqueries
- Correlated Subqueries
- Subqueries in SELECT
- Subqueries in WHERE
- Subqueries in FROM
- IN
- EXISTS
- =
- Nested Queries

---

## ▶️ How to Run

1. Open **MySQL Workbench** or **DB Browser for SQLite**.
2. Create the `FoodDB` database.
3. Run the SQL scripts in the following order:
   - `Task3.sql`
   - `Task4.sql`
   - `Task5.sql`
   - `Task6.sql`
4. Execute the queries and review the output.

---

## 📖 Sample SQL Queries

### Display all food items

```sql
SELECT * FROM FoodItems;
```

### Find food items with a price greater than ₹100

```sql
SELECT * FROM FoodItems
WHERE Price > 100;
```

### Count total food items

```sql
SELECT COUNT(*) AS TotalFoodItems
FROM FoodItems;
```

### Calculate average food price

```sql
SELECT AVG(Price) AS AveragePrice
FROM FoodItems;
```

### Display total stock by category

```sql
SELECT CategoryID, SUM(Stock) AS TotalStock
FROM FoodItems
GROUP BY CategoryID;
```

### Retrieve customer orders using INNER JOIN

```sql
SELECT Customers.CustomerName,
       Orders.FoodItem,
       Orders.TotalAmount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

### Display food items priced above the average price

```sql
SELECT FoodName, Price
FROM FoodItems
WHERE Price >
(
    SELECT AVG(Price)
    FROM FoodItems
);
```

---

## 🎓 Learning Outcomes

After completing this project, you will be able to:

- Retrieve and filter data using SQL `SELECT` statements.
- Sort and limit query results.
- Summarize data using aggregate functions.
- Group records with `GROUP BY` and `HAVING`.
- Combine data from multiple tables using SQL JOINs.
- Write scalar and correlated subqueries.
- Apply nested queries using `IN`, `EXISTS`, and `=` operators.
- Develop efficient SQL queries for database analysis.

---

## 👩‍💻 Author

**MohanaPriya**

AI & Data Science Student

GitHub: https://github.com/your-username

---

## ⭐ Acknowledgement

This project was developed as part of an SQL learning program to practice SQL querying techniques, including data retrieval, aggregation, grouping, joins, and subqueries using **MySQL Workbench** and **DB Browser for SQLite**.

If you found this project helpful, consider giving it a ⭐ on GitHub.
