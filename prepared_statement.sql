-- PREPARED STATEMENT


PREPARE GetOrderDetail FROM 
'SELECT o.OrderID, o.Quantity, o.TotalCost
 FROM Orders o
 JOIN Bookings b ON o.BookingID = b.BookingID
 WHERE b.CustomerID = ?';
 
SET @id = 1;

EXECUTE GetOrderDetail USING @id;


