SELECT e.FirstName, e.LastName
FROM Employees e
INNER JOIN Departments d ON d.Id = e.DepartmentId
WHERE d.Name = 'Finance';