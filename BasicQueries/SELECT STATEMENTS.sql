 SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated
 FROM SalesLT.Product;


 