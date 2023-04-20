select * from Production.ProductSubcategory
select* from Production.ProductCategory
select* from Production.Product

/*Exercise 1
You have to create a report based on the tables 
Production.Product and 
Production.ProductCategory. 
The report should contain the product name and the 
category name of each product.*/

select 
p.name as ProductName,
s.Name as CategoryName

from production.product as p
join Production.ProductSubcategory as s 
on p.ProductSubcategoryID = s.ProductSubcategoryID

join Production.ProductCategory as c
on c.ProductCategoryID = s.ProductCategoryID


/* Exercise 2
Write a query that returns all customers who placed at 
least one order, with detailed information about each 
one. The tables are Sales.Customers, 
Sales.SalesOrderHeader and Sales.OrderDetails */

select * from Sales.Customer
select * from Sales.SalesOrderHeader
select * from Sales.SalesOrderDetail


select 
 sc.CustomerID,
 sod.SalesOrderDetailID,
 sc.StoreID,
 soh.OrderDate,
 soh.ShipDate,
 soh.PurchaseOrderNumber,
 soh.SalesPersonID,
 soh.SubTotal,
 sod.OrderQty,
 sod.UnitPrice

from Sales.SalesOrderHeader as soh
JOIN Sales.Customer as sc
on soh.CustomerID = sc.CustomerID
join Sales.SalesOrderDetail as sod
on sod.SalesOrderID = soh.SalesOrderID

/*Exercise 3
You have to create a report based on the tables 
Production.ProductSubcategory and 
Production.ProductCategory. 
The report should return every combination between the 
category name and the subcategory name.*/

select * from Production.ProductSubcategory
select * from Production.ProductCategory

select
pps.name as 'Subcategory name',
ppc.name as 'Category name'
from Production.ProductSubcategory as pps
cross join Production.ProductCategory as ppc