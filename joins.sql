-- JOINS

SELECT 
    c.CustomerID,
    c.FullName,
    o.OrderID,
    o.TotalCost AS Cost,
    mi.ItemName AS MenuName
FROM Customers c
JOIN Bookings b ON c.CustomerID = b.CustomerID
JOIN Orders o ON b.BookingID = o.BookingID
JOIN OrderDetails omi ON o.OrderID = omi.OrderID
JOIN Menu mi ON omi.MenuItemID = mi.MenuItemID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost ASC;
