select * from Production.Product;

/* 1 */
select top 10 *
from Production.Product
order by ListPrice desc

/*2*/
select ProductSubcategoryID, 
count (*) as TNmbProducts
from Production.Product
group by ProductSubcategoryID 

/*3*/
select * from Production.Product
WHERE StandardCost > 100 and StandardCost < 500

/*4*/
Select top 5 ProductSubcategoryID,
  AVG (ListPrice) as AvgPrice
from Production.Product
Group by ProductSubcategoryID
Order by AvgPrice desc

/*5*/
SELECT 
Count (DiscontinuedDate) as DiscProducts
from Production.Product
WHERE DiscontinuedDate is NOT NULL

