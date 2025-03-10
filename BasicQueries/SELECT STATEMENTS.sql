USE AdventureWorksLT2022;
GO

--Retrive a table named 'Product' from a 'SalesLT' Schema
SELECT * FROM SalesLT.Product;

--Retrive a coloumn named 'StandardCost' and 'ListPrice' from a 'Product' table in a 'SalesLT' Schema
SELECT Name, StandardCost, ListPrice FROM SalesLT.Product;

--Retrive a coloumn named 'Name', minus the 'ListPrice' and 'StandardCost' columns, from a 'Product' table in a 'SalesLT' Schema
SELECT Name, ListPrice - StandardCost FROM SalesLT.Product;

--Retrive a coloumn named 'Name' as 'ProductName', minus the 'ListPrice' and 'StandardCost' coloumns as a 'Markup' coloumn, from a 'Product' table in a 'SalesLT' Schema
SELECT Name AS ProductName, ListPrice - StandardCost AS Markup FROM SalesLT.Product;

--Retrive coloumns named 'ProductNumber, Color,Size' from a 'Product table in a 'SalesLT' Schema, then display the colour and the size with a comma in between in a coloumn named 'ProductDetails'
SELECT ProductNumber, Color, Size, Color + ',' + Size AS ProductDetails FROM SalesLT.Product;

--WORKING WITH DATA TYPES:
--Retrive a coloumn named 'ProductID',add the ':', and a coloumn named 'Name' from a 'Product' table in a 'SalesLT' Schema, display under a table named 'ProductName'
SELECT CONVERT(varchar(5), ProductID) + ': ' + Name AS ProductName FROM SalesLT.Product; 

--Retrive a 'Product' table in a 'SalesLT' Schema, select a coloumn named 'Name',a coloumn named 'Size' with Intergers only, display them under a coloumn named 'NumericSize'
SELECT Name, TRY_CAST(Size AS Integer) AS NumericSize FROM SalesLT.Product;

--HANDLING NULL VALUES
--From a 'Product' table in a 'SalesLT' Schema, Retrive a coloumn named 'Name',from a coloumn named 'Size' display the interger value, if the aren't any REPLACE NULL values with a specified numeric', display the size results under a table named 'NumericSize'
SELECT Name, ISNULL(TRY_CAST(Size AS Integer),0) AS NumericSize FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' Schema,Retrive coloumns named 'ProductNumber','Color','Size', from 'Color' and 'Size' replace the NULL Values with a specified value,display the results in a coloumn named 'ProductDetails'
SELECT ProductNumber, ISNULL(Color, '') + ', ' + ISNULL(Size, '') AS ProductDetails FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' Schema, Retrive a coloumn named 'Name', and a coloumn named 'Color',replace 'Multi'  results on a color columns with NULL,display the results under a column named 'SingleColor'
SELECT Name, NULLIF(Color, 'Multi') AS SingleColor FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' Schema,Retrive a column named 'Name', find the first non-Null date from the columns named 'SellEndDate','SellStartDate', display the results in a column named 'StatusLastUpdated'
SELECT Name, COALESCE(SellEndDate, SellStartDate) AS StatusLastUpdated FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' Schema,Retrive a column named 'Name', check for NULL values in a column named 'SellEndDate, display the resuls in column named 'SalesStatus'
SELECT Name,CASE
         WHEN SellEndDate IS NULL THEN 'Currently for sale'
         ELSE 'No longer available'
     END AS SalesStatus
FROM SalesLT.Product;

--From a 'Product' table in a 'SalesLT' Schema, Retrive a column named 'Size' to display the sizes,and under NULl values replace with a speified value, display the results in a column named 'ProductSize'
SELECT Name,
     CASE Size
         WHEN 'S' THEN 'Small'
         WHEN 'M' THEN 'Medium'
         WHEN 'L' THEN 'Large'
         WHEN 'XL' THEN 'Extra-Large'
         ELSE ISNULL(Size, 'n/a')
     END AS ProductSize
 FROM SalesLT.Product;
