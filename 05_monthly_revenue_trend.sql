-- Query 5: Monthly revenue trend with cumulative running total
SELECT strftime('%Y-%m', o.OrderDate) AS Month,
       COUNT(DISTINCT o.OrderID) AS OrderCount,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS MonthlyRevenue,
       ROUND(SUM(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)))
             OVER (ORDER BY strftime('%Y-%m', o.OrderDate)), 2) AS RunningTotal
FROM Orders o
JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY Month
ORDER BY Month;