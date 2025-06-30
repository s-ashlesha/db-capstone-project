-- addvalidbooking stored procedure

DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN inputCustomerID INT,
    IN inputDate DATE,
    IN inputTable INT
)
BEGIN
    DECLARE bookingExists INT DEFAULT 0;

    START TRANSACTION;

    -- Check if booking already exists
    SELECT COUNT(*) INTO bookingExists
    FROM Bookings
    WHERE BookingDate = inputDate AND TableNumber = inputTable;

    -- If booking exists, rollback
    IF bookingExists > 0 THEN
        ROLLBACK;
        SELECT 'Booking failed: Table already reserved.' AS Result;
    ELSE
        -- Otherwise, insert and commit
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (inputDate, inputTable, inputCustomerID);
        COMMIT;
        SELECT 'Booking successful!' AS Result;
    END IF;
END //

DELIMITER ;
