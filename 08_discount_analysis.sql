-- Query 8: Order analysis by discount tier using CASE WHEN
SELECT 
    CASE 
        WHEN od.Discount = 0 THEN 'No Discount'
        WHEN od.Discount <= 0.10 THEN 'Low (1-10%)'
        WHEN od.Discount <= 0.20 THEN 'Medium (11-20%)'
        ELSE 'High (21%+)'
    END AS DiscountTier,
    COUNT(*) AS OrderLines,
    ROUND(AVG(od.Quantity), 1) AS AvgQuantity,
    ROUND(SUM(od.UnitPrice * od.Quantity), 2) AS RevenueBeforeDiscount,
    ROUND(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)), 2) AS RevenueAfterDiscount,
    ROUND(SUM(od.UnitPrice * od.Quantity * od.Discount), 2) AS TotalDiscountGiven
FROM "Order Details" od
GROUP BY DiscountTier
ORDER BY TotalDiscountGiven DESC;