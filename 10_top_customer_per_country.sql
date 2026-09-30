-- Query 10: Top spending customer in each country
SELECT CustomerID,
       ShipCountry,
       TotalRevenue,
       CountryRank
FROM (
    SELECT o.CustomerID,
           o.ShipCountry,
           ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS TotalRevenue,
           RANK() OVER (
               PARTITION BY o.ShipCountry
               ORDER BY SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) DESC
           ) AS CountryRank
    FROM Orders o
    JOIN "Order Details" od ON o.OrderID = od.OrderID
    GROUP BY o.CustomerID, o.ShipCountry
)
WHERE CountryRank = 1
ORDER BY TotalRevenue DESC;