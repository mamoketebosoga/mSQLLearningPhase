--Specify which database to use
USE AdventureWorksLT2022
GO
SELECT Name, ListPrice FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice', RETRIVE the results in an alphabetical order by Name
SELECT Name, ListPrice From SalesLT.Product ORDER BY Name;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results in an alphabetical order by ListPrice
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice ;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results in an descending order by ListPrice
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC ;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results in an descending order by ListPrice, and Ascending Order by Name
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY ListPrice DESC, Name ASC;

--RESTRICNTING RESULTS USING TOP
--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results of the top twenty expensive ListPrice
SELECT TOP(20) Name, ListPrice FROM  SalesLT.Product ORDER BY ListPrice DESC;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results of the top twenty expensive ListPrice, including duplicates
SELECT TOP(20) WITH TIES Name, ListPrice FROM  SalesLT.Product ORDER BY ListPrice DESC;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice',RETRIVE the results top twenty percent expensive ListPrice
SELECT TOP(20) PERCENT WITH TIES Name, ListPrice FROM  SalesLT.Product ORDER BY ListPrice DESC;

--RETRIVE PAGES WITH OFFSET and FETCH
--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' only Retrive tens rows
SELECT Name, ListPrice FROM SalesLT.Product ORDER BY Name OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' only Retrive the next tens rows, from the previous query
SELECT Name, ListPrice FROM SalesLT.Product 
ORDER BY Name OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

--USING ALL and DISTINCT options
--From a 'Product' table in a 'SalesLT' schema, Retrive the color of each product
SELECT  Color FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' schema, Retrive the color of each product, without retriving the duplicates
SELECT DISTINCT Color FROM SalesLT.Product;

--FILTERING USING THE WHERE CLAUSE
--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, Color, Size' for each product with a ProductModelID value of six
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 6 ORDER BY Name;


--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, Color, Size' for each product with a ProductModelID value not equal six
SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID <> 6 ORDER BY Name;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' for each product, where ListPrice is greater than '1000.00'
SELECT Name, ListPrice FROM SalesLT.Product WHERE ListPrice > 1000.00 ORDER BY ListPrice;

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' for each product, where Name include characters as 'HL Road Frame 5'
SELECT Name, ListPrice FROM SalesLT.Product WHERE Name LIKE 'HL Road Frame %';

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' for each product, where ProductNumber include characters as 'FR-_[0-9][0-9]_-[0-9][0-9]'
SELECT Name, ListPrice, ProductNumber FROM SalesLT.Product WHERE ProductNumber LIKE 'FR-_[0-9][0-9]_-[0-9][0-9]';

--From a 'Product' table in a 'SalesLT' schema, Retrive columns named 'Name, ListPrice' for each product, where the 'SellEndDate' does not include NULL values
SELECT Name, ListPrice FROM SalesLT.Product WHERE SellEndDate IS NOT NULL;

--From a 'Product' table in a 'SalesLT' schema, Retrive column named 'Name' for each product, which inlude the 'SellEndDate' from 2006/1/1-2006/12/31
SELECT Name FROM SalesLT.Product WHERE SellEndDate BETWEEN   '2006/01/01' AND '2006/12/31';

--From a 'Product' table in a 'SalesLT' schema, Retrive column named 'ProductCategoryID,Name,ListPrice' for each product, where ProductCategoryID include numbers '5,6,7'
SELECT ProductCategoryID, Name, ListPrice FROM SalesLT.Product WHERE ProductCategoryID IN (5,6,7);

--From a 'Product' table in a 'SalesLT' schema, Retrive column named 'ProductCategoryID,Name,ListPrice' for each product, where ProductCategoryID include numbers '5,6,7' and include the NULL values for SellEndDate
SELECT ProductCategoryID, Name, ListPrice, SellEndDate FROM SalesLT.Product WHERE ProductCategoryID IN (5,6,7) AND SellEndDate IS NULL;

--From a 'Product' table in a 'SalesLT' schema, Retrive column named 'Name, ProductCategoryID, ProductNumber' for each product,where ProductNumber include letters 'FR' and where ProductCategoryID include numbers '5,6,7' 
SELECT Name, ProductCategoryID, ProductNumber FROM SalesLT.Product WHERE ProductNumber LIKE 'FR%' OR ProductCategoryID IN(5,6,7);




















