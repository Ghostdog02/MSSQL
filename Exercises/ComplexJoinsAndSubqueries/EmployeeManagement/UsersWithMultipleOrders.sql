-- SELECT u.FirstName, u.LastName
-- FROM Users u 
-- INNER JOIN Orders o ON o.UserId = u.Id
-- GROUP BY u.FirstName, u.LastName
-- HAVING COUNT(o.UserId) > 1;

SELECT u.FirstName, u.LastName
FROM Users u
WHERE u.Id IN (
    SELECT o.UserId 
    FROM Orders o
    GROUP BY o.UserId
    HAVING COUNT(*) > 1
);