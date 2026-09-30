-- Query 7: Suppliers with more than 3 products in the catalogue
SELECT s.CompanyName,
       s.Country,
       COUNT(p.ProductID) AS ProductCount,
       ROUND(AVG(p.UnitPrice), 2) AS AvgProductPrice
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID
HAVING ProductCount > 3
ORDER BY ProductCount DESC;