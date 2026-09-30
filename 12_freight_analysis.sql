-- Query 12: Average freight cost and order value by shipping country
SELECT o.ShipCountry,
       COUNT(DISTINCT o.OrderID) AS TotalOrders,
       ROUND(AVG(o.Freight), 2) AS AvgFreightCost,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue,
       ROUND(AVG(o.Freight) / AVG(od.UnitPrice * od.Quantity * (1 - od.Discount)) * 100, 2) AS FreightAsPctOfOrderValue
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY o.ShipCountry
HAVING TotalOrders >= 10
ORDER BY AvgFreightCost DESC;