SELECT DISTINCT
       Customer.FirstName,
       Customer.LastName,
       Customer.Email,
       Genre.Name  
  FROM Customer  
  JOIN Invoice  
    ON Customer.CustomerId = Invoice.CustomerId 
    JOIN InvoiceLine 
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId 
    JOIN Track  
    ON Invoiceline.TrackId = Track.TrackId 
    JOIN Genre  
    ON Track.GenreId = Genre.GenreId 
 WHERE Genre.Name = "Rock" 
ORDER BY Customer.Email;
