/*
Clonar estructura y datos de los campos nombre,color y precio de lista de la tabla production.product en una tabla llamada #Productos
Tablas:Production.Product
Campos: Name, ListPrice, Color
*/

SELECT Name, Color, ListPrice
INTO #Productos
FROM Production.Product;

/*
-----------------------------------------------------------------------------------------------
Clonar solo estructura de los campos identificador, nombre y apellido de la tabla person.person en una tabla llamada #Personas
Tablas: Person.Person
Campos: BusinessEntityID, FirstName, LastName
*/

SELECT BusinessEntityID, FirstName, LastName
INTO #Personas
FROM Person.Person
WHERE BusinessEntityID = NULL;

/*
-----------------------------------------------------------------------------------------------
Eliminar si existe la tabla #Productos
Tablas: #personas
*/

IF OBJECT_ID(N'tempdb..#Productos', N'U') IS NOT NULL
	DROP TABLE dbo.#Productos
GO

/*
-----------------------------------------------------------------------------------------------
Eliminar si existe la tabla #Personas
Tablas: #personas
*/

IF OBJECT_ID(N'tempdb..#Personas', N'U') IS NOT NULL
	DROP TABLE dbo.#Personas
GO

/*
-----------------------------------------------------------------------------------------------
Crear una CTE con las órdenes de venta
Tablas: Sales.SalesOrderHeader
Campos: SalesPersonID, SalesOrderID, OrderDate
*/

WITH Sales_CTE
AS
( SELECT SalesPersonID, SalesOrderID, YEAR(OrderDate) AS Year_Date
  FROM Sales.SalesOrderHeader
  WHERE SalesPersonID IS NOT NULL)

SELECT *
FROM Sales_CTE;
