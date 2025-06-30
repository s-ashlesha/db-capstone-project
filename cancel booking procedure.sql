-- cancel booking procedure

DELIMITER //

CREATE PROCEDURE CancelBooking (
    IN inputBookingID INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = inputBookingID;
END //

DELIMITER ;
