USE AdventureWorks2019;
/*
1)Clonar estructura (ProductID, ListPrice) y datos de la tabla Production.Product en una tabla llamada Productos.
*/
SELECT ProductID, ListPrice
INTO productos
FROM Production.Product;

GO

/*
-----------------------------------------------------------------------------------------------------------------------------------------------
2)Crear un trigger sobre la tabla Productos llamado TR_ActualizaPrecios dónde actualicela tabla  #HistoricoPrecios con  los cambios de precio.
Tablas: ​Productos
Campos: ProductID, ListPrice
*/
CREATE TRIGGER production.TR_ActualizaPrecios
ON production.product
AFTER UPDATE AS
BEGIN 
	UPDATE p
	SET LisTPrice = i.LisTPrice
	FROM productos AS p
	INNER JOIN inserted AS i
	ON p.ProductID = i.ProductID
END
GO

UPDATE Production.Product
SET ListPrice=20
WHERE ProductID=371

SELECT * 
FROM productos
WHERE ProductID=371

GO

/*
-----------------------------------------------------------------------------------------------------------------------------------------------
3) Adaptar el trigger del punto anterior donde valide que el precio no pueda ser negativo.
*/

ALTER TRIGGER production.TR_ActualizaPrecios
ON production.product
INSTEAD OF UPDATE 
AS
	IF (SELECT ListPrice FROM inserted) > 0 
		UPDATE p
		SET LisTPrice = i.LisTPrice
		FROM productos AS p
		INNER JOIN inserted AS i
		ON p.ProductID = i.ProductID
	ELSE 
		PRINT 'ListPrice no pede ser negativo'
GO

UPDATE Production.Product
SET ListPrice=-20
WHERE ProductID=371

SELECT * 
FROM productos
WHERE ProductID=371
