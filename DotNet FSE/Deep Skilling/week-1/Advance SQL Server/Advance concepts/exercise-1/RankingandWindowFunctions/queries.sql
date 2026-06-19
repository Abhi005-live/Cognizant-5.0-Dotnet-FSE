SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Row_Number_Rank
FROM Products;

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    RANK() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Rank_Value
FROM Products;

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    DENSE_RANK() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS Dense_Rank_Value
FROM Products;

SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    ROW_NUMBER() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS RowNum,
    RANK() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS RankNum,
    DENSE_RANK() OVER (
        PARTITION BY Category
        ORDER BY Price DESC
    ) AS DenseRankNum
FROM Products;

WITH RankedProducts AS
(
    SELECT
        ProductID,
        ProductName,
        Category,
        Price,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY Price DESC
        ) AS RowNum
    FROM Products
)
SELECT
    ProductID,
    ProductName,
    Category,
    Price,
    RowNum
FROM RankedProducts
WHERE RowNum <= 3
ORDER BY Category, RowNum;