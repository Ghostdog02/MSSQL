SELECT TOP(5) c.CountryName, r.RiverName
FROM Countries c
INNER JOIN Continents cont ON cont.ContinentCode = c.ContinentCode
LEFT JOIN CountriesRivers cr ON cr.CountryCode = c.CountryCode
LEFT JOIN Rivers r ON r.Id = cr.RiverId
WHERE cont.ContinentName = 'Africa'
ORDER BY c.CountryName;
