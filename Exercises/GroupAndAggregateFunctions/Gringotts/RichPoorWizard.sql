WITH Differences AS (
    SELECT 
        (DepositAmount - LEAD(DepositAmount) OVER (ORDER BY Id)) AS Difference 
    FROM WizzardDeposits
)
SELECT SUM(Difference)
FROM Differences