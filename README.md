# 🛒 Zepto SQL Data Analysis

## 📌 Project Overview

This project focuses on analyzing Zepto product data using **PostgreSQL and SQL**.

The project includes data exploration, data cleaning, and business analysis to extract useful insights from the product dataset.

---

## 🛠️ Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin
- CSV Dataset
- GitHub

---

## 📊 Dataset

The dataset contains information about Zepto products, including:

- Product category
- Product name
- MRP
- Discount percentage
- Available quantity
- Discounted selling price
- Product weight
- Stock availability
- Quantity

---

## 🔍 Data Exploration

The project performs several exploratory analysis tasks:

- Count total number of records
- View sample records
- Check for NULL values
- Find different product categories
- Compare in-stock and out-of-stock products
- Identify products appearing multiple times

---

## 🧹 Data Cleaning

The following data-cleaning steps are performed:

- Identify products with zero MRP or selling price
- Remove records where MRP is zero
- Convert price values from paise to rupees

---

## 📈 Business Analysis

The project answers the following questions:

### 1. Top 10 Best-Value Products

Find the top 10 products based on discount percentage.

### 2. High-MRP Products That Are Out of Stock

Identify products with high MRP that are currently out of stock.

### 3. Estimated Revenue by Category

Calculate estimated revenue for each product category.

### 4. Products With MRP Greater Than ₹500 and Discount Less Than 10%

Identify products with relatively high prices but low discounts.

### 5. Categories With the Highest Average Discount

Find categories offering higher average discounts.

### 6. Price Per Gram

Calculate the price per gram for products weighing more than 100 grams to identify better-value products.

### 7. Product Weight Categorization

Group products into:

- Low
- Medium
- Bulk

based on their weight.

### 8. Total Inventory Weight by Category

Calculate the total inventory weight for each product category.

---

## 🧠 SQL Concepts Used

This project demonstrates practical SQL concepts including:

- SELECT
- WHERE
- DISTINCT
- GROUP BY
- HAVING
- ORDER BY
- LIMIT
- COUNT()
- SUM()
- AVG()
- ROUND()
- CASE WHEN
- CTEs
- UPDATE
- DELETE
- NULL checking
- Data cleaning
- Aggregate functions

---

## 📁 Project Files

```text
zepto-sql-data-analysis/
│
├── README.md
├── zepto.csv
└── Zepto_sql-project.sql
```

### `zepto.csv`

Contains the Zepto product dataset used for analysis.

### `Zepto_sql-project.sql`

Contains the SQL queries used for:

- Table creation
- Data import
- Data exploration
- Data cleaning
- Business analysis

---

## 🎯 Project Objective

The objective of this project is to practice SQL and PostgreSQL by working with an e-commerce product dataset and extracting meaningful business insights.

This project demonstrates my ability to use SQL for **data exploration, data cleaning, aggregation, and business analysis**.

---

## 👨‍💻 Author

**Akash Rathore**

SQL | PostgreSQL | Excel | Power BI | Data Analytics

---

⭐ If you find this project useful, feel free to explore the SQL queries and dataset.
