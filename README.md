# Food Ordering System - SQL Query Operations

## 📌 Project Overview

This project demonstrates essential SQL concepts using a **Food Ordering System** database. It covers retrieving data, summarizing information with aggregate functions, grouping records, and combining data from multiple tables using SQL JOINs.

The project is designed to strengthen fundamental SQL skills required for database management and data analysis.

---

## 🎯 Objectives

### Task 3 – Writing Basic SELECT Queries
- Retrieve data using `SELECT`.
- Filter records with `WHERE`.
- Use `AND`, `OR`, `LIKE`, and `BETWEEN`.
- Sort results using `ORDER BY`.
- Limit the number of records using `LIMIT`.

### Task 4 – Aggregate Functions and Grouping
- Summarize data using aggregate functions.
- Calculate totals, averages, maximum, minimum, and counts.
- Group records using `GROUP BY`.
- Filter grouped data using `HAVING`.

### Task 5 – SQL Joins
- Combine data from multiple related tables.
- Retrieve matching and non-matching records.
- Practice using `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN` (using `UNION` in MySQL).

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

### Task 4 – Aggregate Functions
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

---

## ▶️ How to Run

1. Open **MySQL Workbench** or **DB Browser for SQLite**.
2. Create the **FoodDB** database.
3. Execute the SQL scripts in the following order:
   - `Task3.sql`
   - `Task4.sql`
   - `Task5.sql`
4. Run the queries to view and analyze the results.

---

## 📖 Sample SQL Queries

### Retrieve all food items

```sql
SELECT * FROM FoodItems;
```

### Display food items priced above ₹100

```sql
SELECT * FROM FoodItems
WHERE Price > 100;
```

### Count total food items

```sql
SELECT COUNT(*) AS TotalFoodItems
FROM FoodItems;
```

### Find the average food price

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

---

## 🎓 Learning Outcomes

After completing this project, you will be able to:

- Retrieve data using SQL SELECT statements.
- Filter records using different conditions.
- Sort and limit query results.
- Summarize data using aggregate functions.
- Group records using GROUP BY and HAVING.
- Combine data from multiple tables using SQL JOINs.
- Understand relationships between tables using Primary Keys and Foreign Keys.
- Write efficient SQL queries for data analysis.

---

## 👩‍💻 Author

**MohanaPriya**

AI & Data Science Student

GitHub: https://github.com/your-username

---

## ⭐ Acknowledgement

This project was developed as part of an SQL learning program to practice data retrieval, aggregation, grouping, and table joins using MySQL Workbench and DB Browser for SQLite.

If you found this project helpful, consider giving it a ⭐ on GitHub.
