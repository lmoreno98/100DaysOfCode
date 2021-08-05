USE AdventureWorks2019;
/*
Mostrar  los empleados que también son vendedores
Tablas: HumanResources.Employee, Sales.SalesPerson
Campos: BusinessEntityID
*/

SELECT e.BusinessEntityID
FROM HumanResources.Employee AS e
INNER JOIN Sales.SalesPerson AS p
ON e.BusinessEntityID = p.BusinessEntityID;


/*
------------------------------------------------------------------------------------------------------------
Mostrar  los empleados ordenados alfabéticamente por apellido y por nombre
Tablas: HumanResources.Employee, Person.Person
Campos: BusinessEntityID, LastName, FirstName
*/

SELECT p.BusinessEntityID, p.LastName, p.FirstName
FROM HumanResources.Employee as e
INNER JOIN Person.Person as p
ON e.BusinessEntityID = p.BusinessEntityID
ORDER BY p.LastName, p.FirstName;


/*
------------------------------------------------------------------------------------------------------------
Mostrar el código de logueo, número de territorio y sueldo básico de los vendedores
Tablas: HumanResources.Employee, Sales.SalesPerson
Campos: LoginID, TerritoryID, Bonus, BusinessEntityID
*/

SELECT e.LoginID, p.TerritoryID, p.Bonus
FROM HumanResources.Employee AS e
INNER JOIN Sales.SalesPerson AS p
ON e.BusinessEntityID = p.BusinessEntityID

/*
------------------------------------------------------------------------------------------------------------
Mostrar los productos que sean ruedas
Tablas: Production.Product, Production.ProductSubcategory
Campos: Name, ProductSubcategoryID
*/

SELECT p.Name, s.Name AS Categorie
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS s
ON p.ProductSubcategoryID = s.ProductSubcategoryID
WHERE s.Name LIKE('wheels');


/*
------------------------------------------------------------------------------------------------------------
Mostrar los nombres de los productos que no son bicicletas
Tablas:Production.Product, Production.ProductSubcategory
Campos: Name, ProductSubcategoryID
*/

SELECT p.Name, s.Name AS Categorie
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS s
ON p.ProductSubcategoryID = s.ProductSubcategoryID
WHERE s.Name NOT LIKE('%bikes');

/*
------------------------------------------------------------------------------------------------------------
Mostrar los precios de venta de aquellos productos donde el precio de venta sea inferior al precio de lista 
recomendado  para ese producto ordenados por nombre de producto
Tablas: Sales.SalesOrderDetail, Production.Product
Campos: ProductID, Name, ListPrice, UnitPrice
*/


SELECT DISTINCT s.ProductID, p.Name, p.ListPrice, s.UnitPrice
FROM Sales.SalesOrderDetail as s
INNER JOIN Production.Product as p
ON s.ProductID = p.ProductID 
WHERE s.UnitPrice < p.ListPrice;

/*
------------------------------------------------------------------------------------------------------------
Mostrar todos los productos que tengan igual precio.Se deben mostrar de a pares,
código y nombre de cada uno de los dos productos y el precio de ambos.ordenar por precio en forma descendente
Tablas:Production.Product
Campos: ProductID, ListPrice, Name
*/

SELECT DISTINCT p1.ProductID,p1.ListPrice,p1.Name, p2.ProductID,p2.ListPrice,p2.Name 
FROM Production.Product AS p1
INNER JOIN Production.Product AS p2
ON p1.ListPrice = p2.ListPrice
WHERE p1.ProductID > p2.ProductID
ORDER BY p1.ListPrice DESC;

/*
------------------------------------------------------------------------------------------------------------
Mostrar el nombre de los productos y de los proveedores cuya subcategoría es 15 ordenados por nombre de proveedor
Tablas: Production.Product, Purchasing.ProductVendor, Purchasing.Vendor
Campos: Name ,ProductID,  BusinessEntityID, ProductSubcategoryID
*/

SELECT p.Name AS Name_Product, v.Name AS Name_proveedor, p.ProductSubcategoryID
FROM Production.Product AS p
INNER JOIN Purchasing.ProductVendor AS pv
ON p.ProductID = pv.ProductID
LEFT JOIN Purchasing.Vendor AS v
ON pv.BusinessEntityID = v.BusinessEntityID
WHERE p.ProductSubcategoryID = 15
ORDER BY v.Name;

/*
------------------------------------------------------------------------------------------------------------
Mostrar todas las personas (nombre y apellido) y en el caso que sean empleados mostrar también el login id,sino mostrar null
Tablas: Person.Person, HumanResources.Employee
Campos: FirstName, LastName, LoginID, BusinessEntityID
*/

SELECT p.FirstName, p.LastName, e.BusinessEntityID
FROM Person.Person AS p
LEFT JOIN HumanResources.Employee AS e
ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY e.BusinessEntityID DESC;
