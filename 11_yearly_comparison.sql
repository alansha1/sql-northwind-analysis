-- Query 11: Year-over-year revenue comparison
SELECT 
    strftime('%Y', o.OrderDate) AS Year,
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    COUNT(DISTINCT o.CustomerID) AS UniqueCustomers,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue,
    ROUND(AVG(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS AvgOrderLineValue
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY Year
ORDER BY Year;