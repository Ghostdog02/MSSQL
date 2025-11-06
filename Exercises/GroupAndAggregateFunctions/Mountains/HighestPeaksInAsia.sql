SELECT
  p.Name AS HighestPeak,
  m.Name AS MountainName,
  p.Height AS PeakHeight
FROM Peaks p
INNER JOIN Mountains m ON p.MountainId = m.Id
INNER JOIN Continents c ON m.ContinentId = c.Id
INNER JOIN (
  SELECT m.Id AS MountainId, MAX(p.Height) AS MaxHeight
  FROM Peaks p
  JOIN Mountains m ON p.MountainId = m.Id
  JOIN Continents c ON m.ContinentId = c.Id
  WHERE c.Name = 'Asia'
  GROUP BY m.Id
) maxp ON maxp.MountainId = m.Id AND p.Height = maxp.MaxHeight
WHERE c.Name = 'Asia'
ORDER BY p.Height DESC;
