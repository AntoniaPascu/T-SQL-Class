/* Problem 1: List all products and their suppliers. */

select * from Production.Product
select * from Purchasing.Vendor
select * from Purchasing.ProductVendor

select 
pp.ProductID,
pp.Name as ProductName,
pv.Name as SupplierName

from Production.Product pp
join Purchasing.ProductVendor ppv
on pp.ProductID = ppv.ProductID

join Purchasing.Vendor pv
on ppv.BusinessEntityID = pv.BusinessEntityID

order by ProductName 


/*Problem 2: List all orders placed by a specific customer (e.g., CustomerID = 29825) along with the order details.
CustomerID = 
*/

select * from Sales.SalesOrderDetail
select * from Sales.SalesOrderHeader
select * from Production.Product

select 
sod.SalesOrderID,
soh.OrderDate,
sod.ProductID,
pp.Name as ProductName,
sod.OrderQty,
sod.UnitPrice,
sod.LineTotal

from Sales.SalesOrderDetail sod
join Sales.SalesOrderHeader soh
on sod.SalesOrderID = soh.SalesOrderID

join Production.Product pp
on sod.ProductID = pp.ProductID
where sod.SalesOrderID = 43678

/* Problem 3: List all customers and their respective sales territories.*/

select * from Sales.Customer
select * from Person.Person
select * from Sales.SalesTerritory

select
sc.CustomerID,
pp.FirstName,
pp.LastName,
st.Name as TerritoryName

from Sales.Customer sc
join Person.Person pp
on sc.PersonID = pp.BusinessEntityID

join Sales.SalesTerritory st
on st.TerritoryID = sc.TerritoryID

order by pp.LastName

/* Problem 4: List all products with their subcategories and categories. */

select * from Production.Product
Select * from Production.ProductCategory
select * from Production.ProductSubcategory

select
pp.ProductID,
pp.name as ProductName,
psc.name as SubCategoryName,
pc.Name as CategoryName

from Production.Product pp
join Production.ProductSubcategory psc
on pp.ProductSubcategoryID = psc.ProductSubcategoryID

join Production.ProductCategory pc
on pc.ProductCategoryID = psc.ProductCategoryID

/* Problem 5: List all vendors and their respective purchase order approvers.*/ 

select * from Purchasing.Vendor
select * from Purchasing.PurchaseOrderHeader
select * from Person.Person
select * from Person.EmailAddress

select
pv.BusinessEntityID,
pv.name as VendorName,
pp.FirstName,
pp.LastName,
pea.EmailAddress

from Purchasing.Vendor pv
join Purchasing.PurchaseOrderHeader poh
on pv.BusinessEntityID = poh.VendorID

join Person.Person pp
on poh.EmployeeID = pp.BusinessEntityID

join  Person.EmailAddress pea
on pea.BusinessEntityID = pp.BusinessEntityID

order by pv.Name