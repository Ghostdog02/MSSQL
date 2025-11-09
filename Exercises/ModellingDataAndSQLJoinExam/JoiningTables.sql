SELECT DISTINCT
    p.Name, 
    p.Price, 
    p.Description, 
    c.Name AS Category
FROM Products p
INNER JOIN Categories c 
    ON c.Id = p.CategoryId
WHERE c.Name = 'Electronics' 
    AND p.Price > 500
ORDER BY p.Price ASC;

SELECT DISTINCT 
    u.FirstName, 
    u.LastName, 
    u.Email
FROM Users u
INNER JOIN Orders o 
    ON o.UserId = u.Id
ORDER BY u.FirstName DESC;

SELECT 
    p.Name,
    p.Price,
    c.Name AS CategoryName
FROM OrderItems oi
INNER JOIN Products p 
    ON p.Id = oi.ProductId
INNER JOIN Categories c
    ON c.Id = p.CategoryId
WHERE oi.Quantity > 3
ORDER BY p.Name ASC
