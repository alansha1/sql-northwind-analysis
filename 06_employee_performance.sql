-- Query 6: Sales performance ranked by employee
SELECT e.FirstName || ' ' || e.LastName AS EmployeeName,
       e.Title,
       COUNT(DISTINCT o.OrderID) AS TotalOrders,
       ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue,
       RANK() OVER (ORDER BY SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) DESC) AS RevenueRank
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN "Order Details" od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID
ORDER BY RevenueRank;