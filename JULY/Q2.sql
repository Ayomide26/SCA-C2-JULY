 SELECT BillingCountry, COUNT(*) as Invoices 
FROM Invoice
GROUP BY BillingCountry
ORDER BY Invoices DESC
LIMIT 5;