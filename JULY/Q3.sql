SELECT  c.CustomerId, c.FirstName, c.LastName, sum(i.Total) as Total_spend
FROM Customer c, Invoice i
WHERE c.CustomerId=i.CustomerId
GROUP BY (i.CustomerId)
ORDER BY Total_spend DESC
LIMIT 1;