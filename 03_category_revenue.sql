-- Query 3: Revenue and order count by product category
SELECT c.CategoryName,
       COUNT(DISTINCT o.OrderID) AS TotalOrders,
       SUM(od.Quantity) AS TotalUnitsSold,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue
FROM "Order Details" od
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY c.CategoryName
ORDER BY TotalRevenue DESC;