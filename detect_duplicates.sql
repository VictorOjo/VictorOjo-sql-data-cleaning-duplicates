-- =========================================
--  PROJECT: Detecting and Removing Duplicates
--  FILE: detect_duplicates.sql
--  DESCRIPTION: Identify duplicate sales transactions using CTEs and window functions
-- =========================================

WITH DuplicateCheck AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY Customer_Name, Product, Date_of_Purchase, Store, Quantity, Price
               ORDER BY Transaction_ID
           ) AS RowNum
    FROM Sales_Transactions
)
SELECT *
FROM DuplicateCheck
WHERE RowNum > 1;

-- Explanation:
-- - PARTITION BY defines the fields that make a transaction unique
-- - ROW_NUMBER() assigns a sequence number to each duplicate group
-- - RowNum > 1 returns all duplicates except the first occurrence
