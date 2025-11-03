SELECT TOP(5) e.EmployeeID, e.FirstName, p.Name AS ProjectName
FROM Employees e
INNER JOIN EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE StartDate > '2002-08-13'
ORDER BY EmployeeID ASC;