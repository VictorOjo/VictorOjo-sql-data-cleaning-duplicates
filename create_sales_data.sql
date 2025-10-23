-- =========================================
--  PROJECT: Detecting and Removing Duplicates
--  FILE: create_sales_data.sql
--  DESCRIPTION: Create and populate a sample sales dataset
-- =========================================

DROP TABLE IF EXISTS Sales_Transactions;

CREATE TABLE Sales_Transactions (
    Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Product VARCHAR(50),
    Date_of_Purchase DATE,
    Store VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2)
);

-- Insert sample records with intentional duplicates
INSERT INTO Sales_Transactions (Customer_Name, Product, Date_of_Purchase, Store, Quantity, Price)
VALUES
('Alice Johnson', 'Laptop', '2024-01-10', 'London', 1, 1200.00),
('Alice Johnson', 'Laptop', '2024-01-10', 'London', 1, 1200.00),  -- duplicate
('Bob Smith', 'Headphones', '2024-01-12', 'Manchester', 2, 75.00),
('Charlie Brown', 'Monitor', '2024-01-15', 'London', 1, 250.00),
('Alice Johnson', 'Laptop', '2024-01-10', 'London', 1, 1200.00),  -- duplicate
('Diana Prince', 'Keyboard', '2024-02-01', 'Birmingham', 1, 45.00),
('Bob Smith', 'Headphones', '2024-01-12', 'Manchester', 2, 75.00), -- duplicate
('Ethan Hunt', 'Mouse', '2024-03-05', 'Liverpool', 1, 30.00);

-- Verify records
SELECT * FROM Sales_Transactions;
