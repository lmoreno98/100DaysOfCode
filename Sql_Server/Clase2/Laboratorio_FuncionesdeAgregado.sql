/*
Mostrar la fecha más reciente de venta
Tablas: Sales.SalesOrderHeader
Campos: OrderDate
*/

SELECT MAX(OrderDate) AS FechaReciente
FROM Sales.SalesOrderHeader;

/*
---------------------------------------------------------------------------
Mostrar el precio más barato de todas las bicicletas
Tablas: Production.Product
Campos: ListPrice, Name
*/

SELECT MIN(ListPrice) AS PrecioMasBarato
FROM Production.Product
WHERE Name LIKE '%BIKE%';
/*
---------------------------------------------------------------------------
Mostrar la fecha de nacimiento del empleado más joven
Tablas: HumanResources.Employee
Campos: BirthDate
*/

SELECT MAX(BirthDate) AS BirthDate
FROM HumanResources.Employee;

/*
---------------------------------------------------------------------------
Mostrar el promedio del listado de precios de productos
Tablas: Production.Product
Campos: ListPrice
*/

SELECT AVG(ListPrice) AS Prom
FROM Production.Product;

/*
---------------------------------------------------------------------------
Mostrar la cantidad y el total vendido por productos
Tablas: Sales.SalesOrderDetail
Campos: LineTotal
*/

SELECT COUNT(*) AS Cantidad_Vendida,
	   SUM(LineTotal) AS Total_Vendido
FROM Sales.SalesOrderDetail;