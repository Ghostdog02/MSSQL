CREATE DATABASE Hotel;
GO

USE Hotel;
GO

CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	Title NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(100)
);
GO

CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY IDENTITY(1, 1),
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	PhoneNumber NVARCHAR(13),
	EmergencyName NVARCHAR(30) NOT NULL,
	EmergencyNumber NVARCHAR(15) NOT NULL,
	Notes NVARCHAR(100)
);
GO

CREATE TABLE RoomStatus (
	RoomStatusID INT PRIMARY KEY IDENTITY(1, 1),
	RoomStatus NVARCHAR(15) NOT NULL,
	Notes NVARCHAR(100)
);
GO

CREATE TABLE RoomTypes (
	RoomTypeID INT PRIMARY KEY IDENTITY(1, 1),
	RoomType NVARCHAR(15) NOT NULL,
	Notes NVARCHAR(100)
);
GO

CREATE TABLE BedTypes (
	BedID INT PRIMARY KEY IDENTITY(1, 1),
	BedType NVARCHAR(15) NOT NULL,
	Notes NVARCHAR(100)
);
GO

CREATE TABLE Rooms (
	RoomNumber INT PRIMARY KEY,
	RoomTypeID INT NOT NULL,
	BedID INT NOT NULL,
	RoomStatusID INT NOT NULL,
	Rate DECIMAL(8, 2),
	Notes NVARCHAR(100),
	FOREIGN KEY (RoomTypeID) REFERENCES RoomTypes(RoomTypeID),
	FOREIGN KEY (BedID) REFERENCES BedTypes(BedID),
	FOREIGN KEY (RoomStatusID) REFERENCES RoomStatus(RoomStatusID),
);
GO

CREATE TABLE Payments (
	PaymentID INT PRIMARY KEY IDENTITY(1, 1),
	EmployeeID INT NOT NULL,
	PaymentDate DATE NOT NULL,
	CustomerID INT NOT NULL,
	FirstDateOccupied DATE NOT NULL,
	LastDateOccupied DATE NOT NULL,
	TotalDays INT NOT NULL,
	AmountCharged DECIMAL(15, 4) NOT NULL,
	TaxRate DECIMAL(5, 4),
	TaxAmount DECIMAL(9, 4),
	PaymentTotal DECIMAL(15, 4) NOT NULL,
	Notes NVARCHAR(100),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

CREATE TABLE Occupancies (
	OccupancyID INT PRIMARY KEY IDENTITY(1, 1),
	EmployeeID INT NOT NULL,
	DateOccupied DATE NOT NULL,
	CustomerID INT NOT NULL,
	RoomNumber INT NOT NULL,
	RateApplied DECIMAL(8, 2) NOT NULL,
	PhoneCharge DECIMAL(6, 2) NOT NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (RoomNumber) REFERENCES Rooms(RoomNumber)
);
GO