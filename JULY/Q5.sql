WITH tab1 AS (
	SELECT 
	c.CustomerId,
	c.FirstName, 
	c.LastName,
	c.Country, 
	SUM(i.Total) Total_Spend
	FROM Customer c
	JOIN Invoice i 
	ON c.CustomerId = i.CustomerId
	GROUP BY c.CustomerId),
        tab2 AS     (
                SELECT 
	CustomerId, 
	FirstName, 
	LastName, 
	Country, 
	MAX(Total_Spend) AS Total_Spend
	FROM tab1
	GROUP BY Country)
	
SELECT tab1.*
FROM tab1
JOIN tab2
ON tab1.Country = tab2.Country
WHERE tab1.Total_Spend = tab2.Total_Spend
ORDER BY Total_Spend DESC,
          Country Desc;