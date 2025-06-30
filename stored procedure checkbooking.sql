-- stored procedure checkbooking

DELIMITER //

CREATE PROCEDURE CheckBooking(IN inputDate DATE, IN inputTable INT)
BEGIN
    DECLARE bookingStatus VARCHAR(100);

    IF EXISTS (
        SELECT 1 FROM Bookings 
        WHERE BookingDate = inputDate AND TableNumber = inputTable
    ) THEN
        SET bookingStatus = 'Table is already booked.';
    ELSE
        SET bookingStatus = 'Table is available.';
    END IF;

    SELECT bookingStatus AS Status;
END //

DELIMITER ;
