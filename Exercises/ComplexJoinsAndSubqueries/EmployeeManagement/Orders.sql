SELECT u.FirstName, u.LastName, p.Name AS ProductName, p.Price
FROM Users u
INNER JOIN Orders o ON o.UserId = u.Id
INNER JOIN Products p ON p.Id = o.ProductId;
