-- VIRTUAL TABLE


CREATE OR REPLACE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost AS Cost
FROM Orders
WHERE Quantity > 2;
