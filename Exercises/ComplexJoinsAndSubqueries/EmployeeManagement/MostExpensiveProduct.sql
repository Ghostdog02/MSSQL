SELECT TOP 1 o.Id AS OrderId, u.FirstName,
    u.LastName, p.Name AS Product,
    p.Price
FROM Users u 
INNER JOIN Orders o ON o.UserId = u.Id
INNER JOIN Products p ON p.Id = o.ProductId
ORDER BY p.Price DESC;