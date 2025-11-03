USE Hotel;
GO

INSERT INTO Employees (FirstName, LastName, Title, Notes)
VALUES 
    ('John', 'Smith', 'Front Desk Manager', 'Senior staff member, 5 years experience'),
    ('Sarah', 'Johnson', 'Receptionist', 'Part-time, weekend shifts'),
    ('Michael', 'Brown', 'Concierge', 'Speaks English, Spanish, and French'),
    ('Emily', 'Davis', 'Night Auditor', 'Works overnight shifts'),
    ('David', 'Wilson', 'Guest Services', 'Handles VIP guests');
GO

INSERT INTO Customers (FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
VALUES 
    ('Robert', 'Anderson', '+12025551234', 'Mary Anderson', '+12025555678', 'Frequent guest, prefers quiet rooms'),
    ('Jennifer', 'Martinez', '+13105552345', 'Carlos Martinez', '+13105556789', 'Allergic to feather pillows'),
    ('William', 'Taylor', '+14155553456', 'Linda Taylor', '+14155557890', 'Business traveler'),
    ('Lisa', 'Thomas', '+17185554567', 'James Thomas', '+17185558901', 'Celebrating anniversary'),
    ('James', 'Moore', '+13235555678', 'Patricia Moore', '+13235559012', 'Requires wheelchair accessible room');
GO

INSERT INTO RoomStatus (RoomStatus, Notes)
VALUES 
    ('Available', 'Room is clean and ready for guests'),
    ('Occupied', 'Currently has a guest checked in'),
    ('Cleaning', 'Room is being cleaned by housekeeping'),
    ('Maintenance', 'Room requires repairs'),
    ('Reserved', 'Room is booked for future arrival');
GO

INSERT INTO RoomTypes (RoomType, Notes)
VALUES 
    ('Standard', 'Basic room with standard amenities'),
    ('Deluxe', 'Upgraded room with premium features'),
    ('Suite', 'Large room with separate living area'),
    ('Penthouse', 'Top floor luxury suite'),
    ('Family', 'Room designed for families with children');
GO

INSERT INTO BedTypes (BedType, Notes)
VALUES 
    ('Single', 'One twin bed'),
    ('Double', 'Two twin beds'),
    ('Queen', 'One queen-size bed'),
    ('King', 'One king-size bed'),
    ('Double Queen', 'Two queen-size beds');
GO

INSERT INTO Rooms (RoomNumber, RoomTypeID, BedID, RoomStatusID, Rate, Notes)
VALUES 
    (101, 1, 3, 1, 89.99, 'Ground floor, near elevator'),
    (205, 2, 4, 2, 129.99, 'City view, second floor'),
    (310, 3, 4, 1, 199.99, 'Corner suite with balcony'),
    (501, 4, 4, 5, 399.99, 'Penthouse with panoramic views'),
    (208, 5, 5, 1, 149.99, 'Family room with sofa bed');
GO

INSERT INTO Payments (EmployeeID, PaymentDate, CustomerID, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
VALUES 
    (1, '2024-10-15', 1, '2024-10-15', '2024-10-17', 2, 259.98, 0.0850, 22.10, 282.08, 'Paid by credit card'),
    (2, '2024-10-20', 2, '2024-10-20', '2024-10-22', 2, 179.98, 0.0850, 15.30, 195.28, 'Paid in cash'),
    (1, '2024-10-25', 3, '2024-10-25', '2024-10-30', 5, 649.95, 0.0850, 55.25, 705.20, 'Corporate booking'),
    (3, '2024-10-28', 4, '2024-10-28', '2024-10-29', 1, 199.99, 0.0850, 17.00, 216.99, 'Anniversary special'),
    (1, '2024-11-01', 5, '2024-11-01', '2024-11-03', 2, 299.98, 0.0850, 25.50, 325.48, 'Accessible room booking');
GO

INSERT INTO Occupancies (EmployeeID, DateOccupied, CustomerID, RoomNumber, RateApplied, PhoneCharge)
VALUES 
    (1, '2024-10-15', 1, 205, 129.99, 5.50),
    (2, '2024-10-20', 2, 101, 89.99, 0.00),
    (1, '2024-10-25', 3, 310, 129.99, 12.75),
    (3, '2024-10-28', 4, 310, 199.99, 3.25),
    (1, '2024-11-01', 5, 208, 149.99, 0.00);
GO