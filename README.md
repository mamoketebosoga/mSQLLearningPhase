Overview

This project explores SQL queries executed on the AdventureWorks database. The queries demonstrate various SQL operations, including data retrieval, column manipulation, data type conversions, and handling NULL values.

Queries Implemented

1. Retrieving Data

Selected all columns from SalesLT.Product.

Selected specific columns: Name, StandardCost, and ListPrice.

Created a calculated column displaying ListPrice - StandardCost as Markup.

2. Using Aliases

Assigned column aliases using AS to enhance readability.

3. Concatenating Columns

Combined Color and Size using the + operator to create ProductDetails.

4. Handling Data Types

Attempted concatenation of ProductID (numeric) and Name (text), resulting in an error.

Resolved by using CAST and CONVERT functions.

Used CONVERT to format SellStartDate in different styles.

Explored TRY_CAST to handle non-numeric Size values.

5. Handling NULL Values

Used ISNULL to replace NULL values.

Used NULLIF to convert a specific value to NULL.

Implemented COALESCE to return the first non-NULL value in a column.

6. Conditional Expressions

Utilized CASE expressions to determine product sales status.

Used CASE to map Size values to readable descriptions.

Challenges

Querying customer details from SalesLT.Customer.

Extracting customer contact names and phone numbers.

Creating sales call sheets with assigned salespersons.

Technologies Used

Microsoft SQL Server

Transact-SQL (T-SQL)

How to Run

Open a query editor for the AdventureWorks database.

Copy and execute the SQL queries provided.

Review the results and modify queries as needed.

Future Enhancements

Implement JOINs to extract data from multiple tables.

Optimize queries for performance.

Explore stored procedures and functions.

Author

This project was implemented as part of an SQL learning module, focusing on querying, data manipulation, and handling various SQL functionalities.
