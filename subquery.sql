-- SUB QUERY


SELECT DISTINCT mi.ItemName AS MenuName
FROM Menu mi
WHERE mi.MenuItemID = ANY (
    SELECT omi.MenuItemID
    FROM OrderDetails omi
    JOIN Orders o ON omi.OrderID = o.OrderID
    WHERE o.Quantity > 2
);
