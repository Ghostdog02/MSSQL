CREATE DATABASE CarRental;
GO

USE CarRental;
GO

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1, 1),
    CategoryName NVARCHAR(30) NOT NULL,
    DailyRate DECIMAL(6, 2) NOT NULL,
    WeeklyRate DECIMAL(7, 2) NOT NULL,
    MonthlyRate DECIMAL(7, 2) NOT NULL,
    WeekendRate DECIMAL(6, 2) NOT NULL
);
GO

CREATE TABLE Cars (
    CarID INT PRIMARY KEY IDENTITY(1, 1),
    PlateNumber VARCHAR(30) NOT NULL,
    Manufacturer NVARCHAR(30) NOT NULL,
    Model NVARCHAR(20) NOT NULL,
    CarYear SMALLINT NOT NULL,
    CategoryID INT,
    Doors TINYINT NOT NULL,
    Picture NVARCHAR(50) NOT NULL,
    Condition NVARCHAR(100) NOT NULL,
    Available BIT NOT NULL,

    CONSTRAINT FK_Cars_Categories FOREIGN KEY (CategoryID)
    REFERENCES Categories (CategoryID) 
);
GO

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1, 1),
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Title NVARCHAR(30) NOT NULL,
    Notes NVARCHAR(100)
);
GO

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1, 1),
    DriverLicenceNumber VARCHAR(30) NOT NULL,
    FullName NVARCHAR(50) NOT NULL,
    Adress NVARCHAR(50) NOT NULL,
    City NVARCHAR(20),
    ZIPCode NVARCHAR(20),
    Notes NVARCHAR(100),
);
GO

CREATE TABLE RentalOrders (
    RentalID INT PRIMARY KEY IDENTITY(1, 1),
    EmployeeID INT,
    CustomerID INT,
    CarID INT,
    TankLevel NVARCHAR(20) NOT NULL,
    KilometrageStart INT NOT NULL,
    KilometrageEnd INT NOT NULL,
    TotalKilometrage INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    TotalDays TINYINT NOT NULL,
    RateApplied DECIMAL(6, 2),
    TaxRate DECIMAL(3, 2),
    OrderStatus NVARCHAR(50),
    Notes NVARCHAR(100),

    CONSTRAINT FK_RentalOrders_Employees FOREIGN KEY (EmployeeID)
    REFERENCES Employees (EmployeeID),

    CONSTRAINT fk_RentalOrders_Customers FOREIGN KEY (CustomerID)
    REFERENCES Customers (CustomerID),

    CONSTRAINT FK_RentalOrders_Cars FOREIGN KEY (CarID)
    REFERENCES Cars (CarID)
);
GO