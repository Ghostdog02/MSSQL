INSERT INTO Categories (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES
('Economy', 35.00, 210.00, 800.00, 45.00),
('Sedan', 50.00, 300.00, 1100.00, 65.00),
('SUV', 75.00, 450.00, 1600.00, 90.00),
('Luxury', 120.00, 700.00, 2500.00, 140.00);
GO

INSERT INTO Cars (PlateNumber, Manufacturer, Model, CarYear, CategoryID, Doors, Picture, Condition, Available) VALUES
('CA1234AB', 'Toyota', 'Yaris', 2022, 1, 4, 'yaris.jpg', 'Excellent, low mileage', 1),
('CB5678BC', 'Volkswagen', 'Passat', 2021, 2, 4, 'passat.jpg', 'Good, minor scratches', 0),
('CC9012CD', 'Ford', 'Kuga', 2020, 3, 5, 'kuga.jpg', 'Excellent, clean', 1),
('CD3456DE', 'Mercedes', 'S-Class', 2023, 4, 4, 'sclass.jpg', 'Perfect', 1);
GO

INSERT INTO Employees (FirstName, LastName, Title, Notes) VALUES
('John', 'Smith', 'Manager', 'Oversees daily operations.'),
('Anna', 'Petrova', 'Rental Agent', 'Excellent customer service.'),
('Michael', 'Ivanov', 'Mechanic', 'Responsible for vehicle maintenance.'),
('Elena', 'Georgieva', 'Rental Agent', 'Handles weekend shifts.');
GO

INSERT INTO Customers (DriverLicenceNumber, FullName, Adress, City, ZIPCode, Notes) VALUES
('D1234567', 'Alexander Borisov', '15 Vitosha Blvd.', 'Sofia', '1000', 'First time customer.'),
('D8901234', 'Maria Vasileva', '42 Rakovski Str.', 'Plovdiv', '4000', 'Frequent business traveler.'),
('D5678901', 'Peter Dimitrov', '7 Shipka St.', 'Varna', '9000', 'Prefers SUVs.'),
('D2345678', 'Nikolay Petrov', '1 Oborishte Sq.', 'Burgas', '8000', 'Always rents Luxury class.');
GO

INSERT INTO RentalOrders (EmployeeID, CustomerID, CarID, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, 
                            TotalDays, RateApplied, TaxRate, OrderStatus, Notes) 
VALUES
(2, 1, 1, 'Full', 10000, 10300, 300, '2025-10-20', '2025-10-23', 3, 35.00, 0.20, 'Completed', 'Car was clean upon return.'),
(4, 2, 2, 'Half', 55000, 55700, 700, '2025-11-01', '2025-11-07', 7, 300.00, 0.20, 'Active', 'Weekly rate applied.'),
(2, 3, 3, 'Full', 20000, 20000, 0, '2025-11-03', '2025-11-03', 1, 75.00, 0.20, 'Cancelled', 'Customer requested cancellation.'),
(4, 4, 4, 'Full', 12000, 12000, 0, '2025-12-01', '2025-12-31', 30, 2500.00, 0.20, 'Reserved', 'Monthly Luxury booking.');
GO