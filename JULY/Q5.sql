WITH tab1 AS (
	SELECT 
	Customer.CustomerId,
	Customer.FirstName, 
	Customer.LastName,
	Customer.Country,
                InvoiceLine.UnitPrice	
	SUM(InvoiceLine.Unitprice) Total_Spend
	FROM Customer 
	JOIN Invoice 
	ON Customer.CustomerId = Invoice.CustomerId
	GROUP BY Customer.CustomerId),
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