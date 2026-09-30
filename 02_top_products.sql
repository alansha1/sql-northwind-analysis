SELECT p.ProductName,
       SUM(od.Quantity) AS TotalUnitsSold,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue
FROM "Order Details" od
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalUnitsSold DESC
LIMIT 10;