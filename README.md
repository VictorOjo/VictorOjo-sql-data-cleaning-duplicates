# Detecting and Removing Duplicate Records in Sales Transactions using SQL

## Overview
This project demonstrates how to **identify and remove duplicate records** from a sales transaction dataset using **SQL window functions** and **CTEs (Common Table Expressions)**.

Data cleaning is one of the most important tasks for data analysts, ensuring that insights and reports are accurate. In this project, we simulate a common data quality issue — duplicate entries in a sales table — and fix it using SQL.

---

## Tools Used
- **MySQL Workbench**
- **SQL (CTE, ROW_NUMBER, DELETE)**

## Dataset Description
| Column Name | Description |
|--------------|-------------|
| Transaction_ID | Unique ID for each transaction |
| Customer_Name | Name of the customer |
| Product | Product purchased |
| Quantity | Quantity sold |
| Price | Unit price |
| Date_of_Purchase | Date of purchase |
| Store | Store location |

---

## Concepts Demonstrated
- Using `ROW_NUMBER()` to detect duplicates  
- Applying `CTE` for temporary result sets  
- Safely deleting duplicates with subqueries  
- Validating results using `GROUP BY` and `HAVING`

---

## Steps

### 1️. Create the Dataset
`create_sales_data.sql`  
Creates a sample sales table with intentional duplicate transactions.

### 2️. Identify Duplicates
`detect_duplicates.sql`  
Uses a CTE with `ROW_NUMBER()` to find duplicate rows based on key fields.

### 3️. Clean the Data
`clean_duplicates.sql`  
Deletes duplicate rows, keeping only the first instance of each unique transaction.

### 4️. Validate
Run a final `GROUP BY` query to confirm that all duplicates have been removed.


---


## Expected Outcome
After cleaning, each transaction combination will be unique — no repeated rows for the same product, customer, date, and store.
