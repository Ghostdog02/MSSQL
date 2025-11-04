SELECT e.FirstName, e.LastName, d.Name AS Department
FROM Employees e
INNER JOIN Departments d ON d.Id = e.DepartmentId
WHERE e.Age <= 40 AND (d.Name = 'Sales' OR d.Name = 'Research and Development');