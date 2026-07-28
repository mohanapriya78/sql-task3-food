# Food Ordering System - SQL Queries

## 📌 Project Overview

This project demonstrates fundamental SQL query operations using a **Food Ordering System** database. It includes retrieving data with `SELECT` statements and summarizing data using aggregate functions.

The project helps learners understand how to filter, sort, group, and analyse data stored in a relational database.

## 🎯 Objectives

### Task 3 – Writing Basic SELECT Queries
- Retrieve data from one or more tables.
- Display all columns or selected columns.
- Filter records using `WHERE`.
- Use `AND`, `OR`, `LIKE`, and `BETWEEN`.
- Sort records using `ORDER BY`.
- Limit the number of returned rows using `LIMIT`.

### Task 4 – Aggregate Functions and Grouping
- Summarize data using aggregate functions.
- Calculate totals, averages, maximum, minimum, and counts.
- Group records using `GROUP BY`.
- Filter grouped results using `HAVING`.

## 🛠️ Tools Used

- MySQL Workbench
- DB Browser for SQLite
- SQL
- GitHub

## 📂 Project Structure

```
Food-Ordering-System/
│
├── Task3.sql
├── Task4.sql
├── README.md
└── FoodDB.sql (Optional)
```

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

## 📚 SQL Concepts Covered

### Task 3
- SELECT *
- SELECT specific columns
- WHERE
- AND
- OR
- LIKE
- BETWEEN
- ORDER BY
- LIMIT

### Task 4
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- GROUP BY
- HAVING

## ▶️ How to Run

1. Open MySQL Workbench or DB Browser for SQLite.
2. Create or open the `FoodDB` database.
3. Run the table creation and sample data scripts.
4. Execute `Task3.sql` to practice basic SELECT queries.
5. Execute `Task4.sql` to practice aggregate functions and grouping.

## 📖 Sample Queries

### Retrieve all food items

```sql
SELECT * FROM FoodItems;
```

### Display food items priced above 100

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

## 🎓 Learning Outcomes

After completing this project, you will be able to:

- Retrieve data using SQL SELECT statements.
- Filter records using different conditions.
- Sort and limit query results.
- Use aggregate functions to summarize data.
- Group records using GROUP BY.
- Filter grouped results using HAVING.
- Write efficient SQL queries for data analysis.

## 👩‍💻 Author

**MohanaPriya**

AI & Data Science Student

GitHub: https://github.com/your-username

## ⭐ Acknowledgement

This project was created as part of an SQL learning program to practice database querying and data analysis using MySQL Workbench and DB Browser for SQLite.

If you found this project useful, consider giving it a ⭐ on GitHub.
