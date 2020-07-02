SELECT customer.city,SUM(invoice.Total)
FROM Customer ,Invoice 
WHERE customer.CustomerId=invoice.CustomerId
GROUP BY customer.city
ORDER BY SUM(invoice.Total) DESC
LIMIT 1;