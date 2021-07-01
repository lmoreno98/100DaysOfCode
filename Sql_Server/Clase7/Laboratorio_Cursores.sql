USE AdventureWorks2019;

/*
Incrementar las comisiones de aquellos vendedores que hayan superado el promedio de venta  y que pertenezcan a un territorio​   
Tabla: Sales.SalesPerson
Campos: BusinessEntityID, CommissionPct, SalesLastYear
*/

BEGIN TRANSACTION

DECLARE @Prom MONEY
DECLARE @Id INT
DECLARE Cursor_Ventas CURSOR
FOR
	SELECT BusinessEntityID, AVG(SalesLastYear)
	FROM Sales.SalesPerson
	WHERE TerritoryID IS NOT NULL
	GROUP BY BusinessEntityID
	

OPEN Cursor_Ventas

FETCH NEXT FROM Cursor_Ventas
INTO @Id, @Prom

WHILE @@FETCH_STATUS = 0
BEGIN
	UPDATE Sales.SalesPerson
	SET CommissionPct = CommissionPct * 1.10
	WHERE SalesLastYear > @Prom AND @Id = BusinessEntityID
END

CLOSE Curson_Ventas
DEALLOCATE Curson_Ventas