CREATE DATABASE Sales
GO

USE Sales
GO

CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    FirstName NVARCHAR(30),
    LastName NVARCHAR(30),
    Email VARCHAR(80),
    PhoneNumber VARCHAR(30)
)
GO

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    [Name] NVARCHAR(50),
    [Description] NVARCHAR(100)
)
GO

CREATE TABLE Products (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    [Name] NVARCHAR(50),
    [Description] NVARCHAR(100),
    Price DECIMAL(6, 2),
    StockQuantity INT,
    CategoryId INT,

    CONSTRAINT FK_Products_Categories
    FOREIGN KEY (CategoryId) REFERENCES Categories(Id)
    ON UPDATE CASCADE     
)
GO

CREATE TABLE Orders (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    UserId INT,
    OrderDate DATE,
    TotalAmount INT,
    ShippingAddress NVARCHAR(50),

    CONSTRAINT FK_Orders_Users
    FOREIGN KEY (UserId) REFERENCES Users(Id)
    ON UPDATE CASCADE
)
GO

CREATE TABLE OrderItems (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    ProductId INT,
    Quantity INT,
    Subtotal DECIMAL(7, 2)
)
GO

CREATE TABLE Reviews (
    Id INT PRIMARY KEY IDENTITY(1, 1),
    ProductId INT,
    UserId INT,
    Rating DECIMAL(3,1) CHECK (Rating > 0.0 AND Rating <= 10.0),
    Comment NVARCHAR(100),

    CONSTRAINT FK_Reviews_Products
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
    ON UPDATE CASCADE,
    
    CONSTRAINT FK_Reviews_Users
    FOREIGN KEY (UserId) REFERENCES Users(Id)
    ON UPDATE CASCADE
)
GO
