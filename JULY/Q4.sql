SELECT DISTINCT
       C.FirstName AS FirstName,
       C.LastName  AS LastName,
       C.Email     AS Email,
       G.Name      AS Name
  FROM Customer C 
  JOIN Invoice I 
    ON C.CustomerId = I.CustomerId 
    JOIN InvoiceLine IL 
    ON I.InvoiceId = IL.InvoiceId 
    JOIN Track T 
    ON IL.TrackId = T.TrackId 
    JOIN Genre G 
    ON T.GenreId = G.GenreId 
 WHERE G.Name = "Rock" 
ORDER BY C.Email;