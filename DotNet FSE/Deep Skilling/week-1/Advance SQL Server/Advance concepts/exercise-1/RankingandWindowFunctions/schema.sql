-- Drop table if it already exists
DROP TABLE IF EXISTS Products;

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop A', 'Electronics', 80000.00),
(2, 'Laptop B', 'Electronics', 70000.00),
(3, 'Laptop C', 'Electronics', 70000.00),
(4, 'Phone A', 'Electronics', 60000.00),

(5, 'Sofa A', 'Furniture', 15000.00),
(6, 'Chair A', 'Furniture', 10000.00),
(7, 'Chair B', 'Furniture', 9000.00),
(8, 'Table A', 'Furniture', 9000.00),

(9, 'Book A', 'Books', 1200.00),
(10, 'Book B', 'Books', 1000.00),
(11, 'Book C', 'Books', 1000.00),
(12, 'Book D', 'Books', 800.00);

-- Verify data
SELECT * FROM Products;