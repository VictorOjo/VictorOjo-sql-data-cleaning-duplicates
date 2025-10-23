-- =========================================
--  PROJECT: Detecting and Removing Duplicates
--  FILE: clean_duplicates.sql
--  DESCRIPTION: Remove duplicate records while keeping the first occurrence
-- =========================================

DELETE FROM Sales_Transactions
WHERE Transaction_ID IN (
    SELECT Transaction_ID
    FROM (
        SELECT Transaction_ID,
               ROW_NUMBER() OVER (
                   PARTITION BY Customer_Name, Product, Date_of_Purchase, Store, Quantity, Price
                   ORDER BY Transaction_ID
               ) AS RowNum
        FROM Sales_Transactions
    ) AS Sub
    WHERE RowNum > 1
);

-- Verify data is now clean
SELECT Customer_Name, Product, Date_of_Purchase, Store, Quantity, Price, COUNT(*) AS Count
FROM Sales_Transactions
GROUP BY Customer_Name, Product, Date_of_Purchase, Store, Quantity, Price
HAVING COUNT(*) > 1;
