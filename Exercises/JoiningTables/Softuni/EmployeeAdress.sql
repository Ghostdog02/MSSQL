SELECT TOP(5) e.EmployeeId, e.JobTitle, 
                a.AddressID, a.AddressText
FROM Employees e INNER JOIN Addresses a 
    ON e.AddressID = a.AddressID
ORDER BY AddressID ASC;