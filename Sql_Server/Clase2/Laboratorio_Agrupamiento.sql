/*
Mostrar el código de subcategoría y el precio del producto más barato de cada una de ellas
Tablas: Production.Product
Campos: ProductSubcategoryID, ListPrice
*/

SELECT ProductSubcategoryID, MIN(ListPrice) AS PrecioMasBArato
FROM Production.Product
GROUP BY ProductSubcategoryID;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar los productos y la cantidad total vendida de cada uno de ellos
Tablas: Sales.SalesOrderDetail
Campos: ProductID, OrderQty
*/

SELECT ProductId, SUM(OrderQty) AS Cant_Vendida
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar los productos y el total vendido de cada uno de ellos, ordenados por el total vendido
Tablas: Sales.SalesOrderDetail
Campos: ProductID, LineTotal
*/

SELECT ProductID, SUM(LineTotal) AS Total_Vendido
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY Total_Vendido;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar el promedio vendido por factura.
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, LineTotal
*/

SELECT SalesOrderId, AVG(LineTotal) AS Prom_Ventas
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar todas las facturas realizadas y el total facturado de cada una de ellas ordenado por número de factura 
pero sólo de aquellas órdenes superen un total de $10.000
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, LineTotal
*/

SELECT SalesOrderID, SUM(LineTotal) AS Total_Ventas
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) >= 10000;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar la cantidad de facturas que vendieron más de 20 unidades
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, OrderQty
*/

SELECT SalesOrderID, SUM(OrderQty) AS Unidad
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(OrderQTY) >= 20;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar las subcategorías de los productos que tienen dos o más productos que cuestan menos de $150
Tablas: Production.Product
Campos: ProductSubcategoryID, ListPrice
*/

SELECT ProductSubcategoryID, COUNT(ListPrice) AS Cantidad
FROM Production.Product
WHERE ListPrice > 150
GROUP BY ProductSubcategoryID
HAVING COUNT(ListPrice) > 2;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar todos los códigos de subcategorías existentes junto con la cantidad para 
los productos cuyo precio de lista sea mayor a $ 70 y el precio promedio sea mayor a $ 300.
Tablas: Production.Product
Campos: ProductSubcategoryID, ListPrice
*/

SELECT ProductSubcategoryID, COUNT(ProductSubcategoryID) AS Cantidad
		,AVG(ListPrice) AS Promedio 
FROM Production.Product
WHERE ListPrice > 70
GROUP BY ProductSubcategoryID
HAVING AVG(ListPrice) > 300;

/*
----------------------------------------------------------------------------------------------------------------
Mostrar el número de factura, el monto vendido, y al final, totalizar la facturación.
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, UnitPrice, OrderQty
*/

SELECT SalesOrderID, SUM(UnitPrice * OrderQty) AS Total
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID WITH ROLLUP;