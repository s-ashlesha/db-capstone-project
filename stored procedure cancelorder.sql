-- stored procedure cancelorder

DELIMITER //

CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = inputOrderID;
END //

DELIMITER ;
