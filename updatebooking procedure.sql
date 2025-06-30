-- updatebooking procedure
DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN inputBookingID INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = newBookingDate
    WHERE BookingID = inputBookingID;
END //

DELIMITER ;
