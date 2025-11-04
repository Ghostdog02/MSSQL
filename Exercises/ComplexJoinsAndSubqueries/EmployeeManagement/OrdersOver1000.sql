SELECT o.Id AS OrderId, p.Name AS Product,
    u.FirstName, u.LastName, p.Price
FROM Users u 
INNER JOIN Orders o ON o.UserId = u.Id
INNER JOIN Products p ON p.Id = o.ProductId
WHERE p.Price > 1000
ORDER BY p.Price DESC;