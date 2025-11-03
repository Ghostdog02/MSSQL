USE Library;

INSERT INTO Authors (FirstName, LastName, BirthDate)
VALUES ('Dimcho', 'Debelianov', '1887-03-28');

SELECT CONCAT(FirstName, LastName) AS FullName 
FROM Authors
WHERE YEAR(BirthDate) > 1860;
