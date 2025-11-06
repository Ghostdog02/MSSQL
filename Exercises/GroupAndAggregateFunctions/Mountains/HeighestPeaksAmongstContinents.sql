SELECT 
    c.Name AS Continent, 
    p.Name AS HighestPeakName,
    p.Height AS HeighestPeakEvalation
FROM Peaks P 
INNER JOIN Mountains m ON p.MountainId = m.Id
INNER JOIN Continents c ON c.Id = m.ContinentId
INNER JOIN (
    SELECT MAX(p.Height) AS PeakHeight,
        c.Id AS ContinentId
    FROM Peaks P 
    INNER JOIN Mountains m ON p.MountainId = m.Id
    INNER JOIN Continents c ON c.Id = m.ContinentId
    GROUP BY c.Id 
) maxp 
    ON c.Id = maxp.ContinentId 
    AND maxp.PeakHeight = p.Height
ORDER BY p.Height DESC;