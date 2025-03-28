/*Using SalesDB retrieve a list of all orders ,
along with the related customers, product, and 
employee details ,For each order display:
Oder ID, Customer name, Product name, Sales, Sales person's name*/

--Exploring the tables to find the common value key.

SELECT* FROM Sales.Customers;
SELECT* FROM Sales.Employees;
SELECT* FROM Sales.Orders;
SELECT* FROM Sales.OrdersArchive;
SELECT* FROM Sales.Products;





SELECT
   o.OrderID,
   o.Sales,
   c.FirstName AS CustomerFirstName,
   c.LastName AS CustomerLastName,
   p.Product AS Product_name,
   p.Price,
   e.FirstName AS SalesPersonFirstName,
   e.LastName AS SalesPersonLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID