USE AdventureWorks2019;
/*
Obtener el total de ventas del año 2014 y guardar lo en una variable llamada @TotalVentas, luego imprimir el resultado.
Tablas: Sales.SalesOrderDetail
Campos: LineTotal
*/

DECLARE @TotalVentas int;
SELECT @TotalVentas=SUM(LineTotal)
FROM Sales.SalesOrderDetail;

print('El total de ventas es: $' + str(@TotalVentas))

/*
-----------------------------------------------------------------------------------------------------------
Obtener el promedio de precios y guardarlo en una variable llamada @Promedio luego hacer un reporte de todos
los productos cuyo precio de venta sea menor al Promedio.
Tablas: Production.Product
Campos: ListPrice, ProductID
*/

DECLARE @Promedio float;
SELECT @Promedio = AVG(ListPrice)
FROM Production.Product;

SELECT ListPrice, ProductId
FROM Production.Product
WHERE ListPrice < @Promedio
Print('El promedio es: ' + STR(@Promedio)) 

/*
-----------------------------------------------------------------------------------------------------------
Utilizando la variable @Promedio incrementar en un 10% el valor de los productos sean inferior al promedio.
Tablas: Production.Product
Campos: ListPrice
*/

SELECT ListPrice * 1.1
FROM Production.Product
WHERE ListPrice < @Promedio
GO
/*
-----------------------------------------------------------------------------------------------------------
Crear un variable de tipo tabla con las categorías y subcategoría de productos y reportar el resultado.
Tablas: Production.ProductSubcategory, Production.ProductCategory
Campos: Name
*/

DECLARE @Table table
(
    	Categoria		VARCHAR(50), 
    	SubCategoria 	VARCHAR(50)
)
INSERT INTO @Table 
SELECT s.name, c.name
FROM Production.ProductSubcategory as s
INNER JOIN Production.ProductCategory as c
ON s.ProductCategoryID = c.ProductCategoryID;

SELECT *
FROM @Table


/*
-----------------------------------------------------------------------------------------------------------
Analizar el promedio de la lista de precios de productos, si su valor es menor 500
imprimir el mensaje el PROMEDIO BAJO de lo contrario imprimir el mensaje PROMEDIO ALTO
Tablas: Production.Product
Campos: ListPrice
*/

DECLARE @Promedio float;
SELECT @Promedio = AVG(ListPrice)
FROM Production.Product;

IF @Promedio < 500
	print('Promedio Bajo')
ELSE 
	Print ('Promedio Alto')