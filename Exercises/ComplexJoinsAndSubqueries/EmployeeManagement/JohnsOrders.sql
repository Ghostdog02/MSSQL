SELECT u.FirstName, p.Name AS Product, p.Price
FROM Products p 
INNER JOIN Orders o ON o.ProductId = p.Id
INNER JOIN Users u ON u.Id = o.UserId
WHERE u.FirstName = 'John';