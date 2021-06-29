USE AdventureWorks2019;
GO
/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que devuelva el promedio de los productos.
Tablas: Production.Product
Campos: ListPrice
*/

CREATE FUNCTION dbo.Prom()
RETURNS MONEY
AS
BEGIN 
	DECLARE @Monto MONEY 
	SELECT @Monto = AVG(ListPrice) 
	FROM Production.Product
	RETURN @Monto
END
GO

SELECT dbo.Prom() AS Promedio;
GO

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que dado un código de producto devuelva el total de ventas para dicho producto luego, mediante una  consulta, traer código y total de ventas.
Tablas: Sales.SalesOrderDetail
Campos: ProductID, LineTotal
*/

CREATE FUNCTION dbo.Total_Ventas(@Product INT)
RETURNS FLOAT
BEGIN
	DECLARE @Cantidad FLOAT
	SELECT @Cantidad = SUM(LineTotal)
	FROM Sales.SalesOrderDetail
	WHERE @Product = ProductID
	RETURN @Cantidad
END
GO

SELECT dbo.Total_Ventas(707)
GO

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que dado un código devuelva la cantidad de productos vendidos o cero si no se ha vendido.
Tablas: Sales.SalesOrderDetail
Campos: ProductID, OrderQty
*/

CREATE FUNCTION Sales.Cant_Vend(@Product INT)
RETURNS INT
AS
BEGIN
	DECLARE @Cantidad int;
		SELECT @Cantidad = SUM(OrderQty)
		FROM Sales.SalesOrderDetail
		WHERE ProductID = @Product;

	IF @Cantidad IS NULL
	   SET @Cantidad = 0;

	RETURN @Cantidad;
END
GO

SELECT Sales.Cant_Vend(1)
GO
 
/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que devuelva el promedio total de venta luego obtener los productos cuyo precio sea inferior al promedio.
Tablas: Sales.SalesOrderDetail​, ​Production.Product
Campos: ProductID, ListPrice
*/

CREATE FUNCTION Sales.Prom_Ventas()
RETURNS FLOAT
AS
BEGIN
	DECLARE @Prom FLOAT
	SELECT  @Prom = AVG(LineTotal)
	FROM Sales.SalesOrderDetail
	RETURN @Prom
END
GO

SELECT ProductID
FROM Production.Product
WHERE ListPrice < Sales.Prom_Ventas()

GO

/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que dado un año, devuelva nombre y  apellido de los empleados que ingresaron ese año
Tablas: Person.Person, HumanResources.Employee​
Campos: FirstName, LastName,HireDate, BusinessEntityID
*/

CREATE FUNCTION dbo.Person_Hire(@Year INT)
RETURNS TABLE
AS 
RETURN(
	SELECT P.FirstName, P.LastName
	FROM Person.Person AS P
	INNER JOIN HumanResources.Employee AS E
	ON P.BusinessEntityID = E.BusinessEntityID
	WHERE YEAR(HireDate) = @Year
);
GO

SELECT *
FROM dbo.Person_Hire(2011);
GO


/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear una función que reciba un parámetro correspondiente a un precio y nos retorna una tabla con código,
nombre,color y precio de todos los productos cuyo precio sea inferior al parámetro ingresado
Tablas: Production.Product
Campos: ProductID, Name, Color, ListPrice
*/

CREATE FUNCTION dbo.Productos_Baratos(@Price FLOAT)
RETURNS TABLE
AS
RETURN(
	SELECT ProductID, Name, Color, ListPrice
	FROM Production.Product
	WHERE ListPrice < @Price
);
GO

SELECT *
FROM dbo.Productos_Baratos(100)
GO
/*
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Realizar el mismo pedido que en el punto anterior pero utilizando este  tipo de función
Tablas: Production.Product
Campos: ProductID, Name, Color, ListPrice
*/

CREATE FUNCTION dbo.tf_ofertas(@minimo DECIMAL(6,2))
RETURNS @oferta 
TABLE(
	Codigo		INT
	,Nombre		VARCHAR(40)
	,Color		VARCHAR(30)
	,Precio		DECIMAL(6,2)
)
AS
BEGIN
	INSERT @oferta
	SELECT ProductID,Name,Color,ListPrice
	FROM Production.Product
	WHERE ListPrice<@minimo
	
	RETURN
END
GO

SELECT *
FROM dbo.tf_ofertas(100)