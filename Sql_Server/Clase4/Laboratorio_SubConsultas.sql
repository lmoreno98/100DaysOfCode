USE AdventureWorks2019;
/*
Listar todos las productos cuyo precio sea inferior al precio promedio de todos los productos
Tablas:Production.Product
Campos: Name, ListPrice
*/

SELECT Name, ListPrice,
		(SELECT avg(ListPrice)
		 FROM Production.Product) AS Price_Prom
FROM Production.Product
WHERE ListPrice < (SELECT avg(ListPrice)
				   FROM Production.Product)
ORDER BY ListPrice;

/*
----------------------------------------------------------------------------------------------------
Listar  el nombre, precio de lista, precio promedio y diferencia de precios entre cada producto y el valor promedio general
Tablas:Production.Product
Campos: Name, ListPrice
*/

SELECT Name, ListPrice,
		(SELECT AVG(listPrice) FROM Production.Product) AS PrecioPromedio,
		(SELECT (p.listPrice - AVG(listPrice)) FROM Production.Product) AS diff_precio
FROM Production.Product AS p


/*
----------------------------------------------------------------------------------------------------
Mostrar el o los códigos del producto mas caro
Tablas:Production.Product
Campos: ProductID,ListPrice 
*/

SELECT ProductID, ListPrice
FROM Production.Product
WHERE ListPrice = (SELECT MAX(ListPrice) FROM Production.Product);

/*
----------------------------------------------------------------------------------------
Mostrar el producto más barato de cada subcategoría. mostrar subcategoría, código de producto y
el precio de lista más barato ordenado por subcategoría
Tablas:Production.Product
Campos: ProductSubcategoryID, ProductID, ListPrice
*/

SELECT p.ProductSubcategoryID, ProductID, ListPrice
FROM Production.Product as p
WHERE	ListPrice = (	SELECT	MIN (ListPrice) 
						FROM Production.Product p2
						WHERE p2.ProductSubcategoryID = p.ProductSubcategoryID
					)
ORDER BY	p.ProductSubcategoryID;

/*
Laboratorio Exists - Not Exists
*/

/*
----------------------------------------------------------------------------------------
Mostrar los nombres de todos los productos presentes en la subcategoría de ruedas
Tablas:Production.Product, Production.ProductSubcategory
Campos: ProductSubcategoryID, Name
*/
SELECT ProductSubcategoryID, Name
FROM Production.Product AS p
WHERE EXISTS (SELECT ProductSubcategoryID, Name
			  FROM Production.ProductSubcategory AS ps 
			  WHERE p.ProductSubcategoryID = ps.ProductSubcategoryID AND Name LIKE('%Wheels%'))

/*
----------------------------------------------------------------------------------------
Mostrar todos los productos que no fueron vendidos
Tablas:Production.Product, Sales.SalesOrderDetail
Campos: Name, ProductID
*/

SELECT Name, ProductID
FROM Production.Product AS p
WHERE NOT EXISTS (SELECT ProductID
				  FROM Sales.SalesOrderDetail AS sod
				  WHERE p.ProductID = sod.ProductID);


/*
-------------------------------------------------------------------------------------------------
Mostrar la cantidad de personas que no son vendedores
Tablas: Person.Person, Sales.SalesPerson
Campos: BusinessEntityID
*/

SELECT COUNT(BusinessEntityID) AS CantidadNoVededores
FROM Person.Person AS p
WHERE NOT EXISTS (SELECT BusinessEntityID
				  FROM Sales.SalesPerson AS sp
				  WHERE p.BusinessEntityID = sp.BusinessEntityID)

/*
-------------------------------------------------------------------------------------------------
Mostrar todos los vendedores (nombre y apellido) que no tengan asignado un territorio de ventas
Tablas: Person.Person, Sales.SalesPerson
Campos: BusinessEntityID, TerritoryID, LastName, FirstName
*/

SELECT BusinessEntityID, FirstName,LastName
FROM Person.Person AS p
WHERE EXISTS (SELECT *
				  FROM Sales.SalesPerson AS sp
				  WHERE p.BusinessEntityID = sp.BusinessEntityID AND TerritoryID IS NULL);


/*
Laboratorio IN - Not IN
*/

/*
-------------------------------------------------------------------------------------------------
Mostrar las órdenes de venta que se hayan facturado en territorio de estado unidos únicamente 'us'​​  
Tablas: Sales.SalesOrderHeader, Sales.SalesTerritory                 
Campos: CountryRegionCode, TerritoryID
*/

SELECT TerritoryID
FROM Sales.SalesOrderHeader AS so
WHERE TerritoryID IN (SELECT TerritoryID
					  FROM Sales.SalesTerritory AS st
					  WHERE CountryRegionCode LIKE('US'));

/*
-----------------------------------------------------------------------------------------
Al ejercicio anterior agregar ordenes de Francia e Inglaterra​ 
Tablas: Sales.SalesOrderHeader, Sales.SalesTerritory
Campos: CountryRegionCode, TerritoryID
*/

SELECT TerritoryID
FROM Sales.SalesOrderHeader AS so
WHERE TerritoryID IN (SELECT TerritoryID
					  FROM Sales.SalesTerritory AS st
					  WHERE CountryRegionCode IN('US','FR','GB'));


/*
-----------------------------------------------------------------------------------------
Mostrar los nombres de los diez productos más caros
Tablas: Production.Product
Campos:​​ListPrice
*/

SELECT *
FROM Production.Product
WHERE ListPrice IN (SELECT TOP 10 ListPrice
					FROM Production.Product
					ORDER BY ListPrice DESC);
					
/*
-----------------------------------------------------------------------------------------
Mostrar aquellos productos cuya cantidad de pedidos de venta sea igual o superior a 20​​ 
Tablas: Production.Product, Sales.SalesOrderDetail
Campos: Name, ProductID , OrderQty
*/


/*
Laboratorio  ALL - ANY
*/

/*
----------------------------------------------------------------------------------------
Mostrar los nombres de todos los productos de ruedas que fabrica adventure works cycles​ 
Tablas: Production.Product, Production.ProductSubcategory    
Campos: Name, ProductSubcategoryID          
*/

/*
----------------------------------------------------------------------------------------
Mostrar los clientes ubicados en un territorio no cubierto por ningún vendedor​ 
Tablas: Sales.Customer, Sales.SalesPerson                
Campos: TerritoryID          
*/

/*
----------------------------------------------------------------------------------------
Listar los productos cuyos precios de venta sean mayores o iguales que el precio de venta    máximo de cualquier subcategoría de producto.​  
Tablas: Production.Product               
Campos: Name, ListPrice, ProductSubcategoryID
*/