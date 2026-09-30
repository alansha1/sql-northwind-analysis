-- Query 9: Low stock products that need reordering
SELECT p.ProductName,
       c.CategoryName,
       s.CompanyName AS Supplier,
       p.UnitsInStock,
       p.UnitPrice,
       CASE
           WHEN p.UnitsInStock = 0 THEN 'OUT OF STOCK'
           WHEN p.UnitsInStock <= 5 THEN 'Critical'
           WHEN p.UnitsInStock <= 15 THEN 'Low'
           ELSE 'OK'
       END AS StockStatus
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.Discontinued = 0
ORDER BY p.UnitsInStock ASC;