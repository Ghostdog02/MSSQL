CREATE DATABASE Minions;
GO

USE Minions;
GO

CREATE TABLE Towns (
	TownID INT PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(50) NOT NULL
);
GO

CREATE TABLE Minions (
	MinionID INT PRIMARY KEY IDENTITY(1,1),
	[Name] NVARCHAR(50) NOT NULL,
	Age INT,
	TownID INT NOT NULL,
	FOREIGN KEY (TownID) REFERENCES Towns(TownID)
);
GO

INSERT INTO Towns ([Name]) VALUES
('Sofia'), 
('Plovdiv'), 
('Varna');

INSERT INTO Minions ([Name], Age, TownID) VALUES
('Kevin', 22, 1), 
('Bob', 32, 3), 
('Steward', NULL, 2); 