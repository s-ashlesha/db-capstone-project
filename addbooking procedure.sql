-- addbooking procedure

DELIMITER //

CREATE PROCEDURE AddBooking (
    IN inputBookingID INT,
    IN inputCustomerID INT,
    IN inputBookingDate DATE,
    IN inputTableNumber INT
)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (inputBookingID, inputCustomerID, inputBookingDate, inputTableNumber);
END //

DELIMITER ;
