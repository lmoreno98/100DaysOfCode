USE AdventureWorks2019;

/*
Borrar todos los productos que no se hayan vendido y luego revertir la operación.
Tablas: Production.Product, Sales.SalesOrderDetail
Campos: ProductID
*/

BEGIN TRANSACTION;
	DELETE FROM Production.Product
	WHERE ProductID IN
					(SELECT DISTINCT p.ProductID
					FROM Production.Product AS p
					LEFT JOIN Sales.SalesOrderDetail AS sod
					ON p.ProductID = sod.ProductID
					WHERE sod.SalesOrderID IS NULL)
ROLLBACK TRANSACTION

/*
Ejercicio resulto por la guia
BEGIN TRAN

	DELETE P
	FROM Production.Product AS P
	WHERE NOT EXISTS( SELECT 1 FROM Sales.SalesOrderDetail AS SOD WHERE P.ProductID = SOD.ProductID)

ROLLBACK
*/

/*
---------------------------------------------------------------------------------------------------------------
Incrementar el precio a 200 para todos los productos cuyo precio sea igual a cero y confirmar la transacción.
Tablas: Production.Product
Campos: ListPrice
*/

BEGIN TRANSACTION;
	UPDATE Production.Product
	SET ListPrice = 200
	WHERE ListPrice = 0;
COMMIT TRANSACTION


/*
---------------------------------------------------------------------------------------------------------------
Obtener el promedio del listado de precios y guardarlo en una variable llamada @Promedio. Incrementar todos los
productos un 15% pero si el precio mínimo no supera el promedio revertir toda la operación.​
Tablas: Production.Product  
Campos: ListPrice
*/

BEGIN TRANSACTION;
	DECLARE @Prom MONEY;
	SELECT @Prom = AVG(ListPrice) FROM Production.Product;
	
	UPDATE Production.Product
	SET ListPrice = ListPrice *1.15;

	IF (SELECT MIN(ListPrice) FROM Production.Product) >  @Prom
		ROLLBACK TRANSACTION
 	ELSE
		COMMIT TRANSACTION
 	
