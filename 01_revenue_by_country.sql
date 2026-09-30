SELECT ShipCountry,
       COUNT(DISTINCT o.OrderID) AS TotalOrders,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY ShipCountry
ORDER BY TotalRevenue DESC;