SELECT e.FirstName, e.Age, d.Name AS Department
FROM Employees e
INNER JOIN Departments d ON d.Id = e.DepartmentId
WHERE e.FirstName LIKE '%e%' 
    AND d.Name != 'Research and Development';