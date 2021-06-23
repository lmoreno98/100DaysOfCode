USE AdventureWorks2019;
/*
Clonar estructura y datos de los Campos nombre, color y
precio de lista de la tabla production.product en una tabla llamada Productos
Tablas: Produccion, Production.Product            
Campos: ​ProductID, ​Name, Color, ListPrice
*/

SELECT productID, Name, Color, ListPrice
INTO Productos
FROM Production.Product;

/*
------------------------------------------------------------------------------------
Aumentar un 20% el precio de lista de todos los productos
Tablas: Produccion            
Campos: ListPrice
*/

UPDATE Productos
SET ListPrice = ListPrice * 1.2;

/*
------------------------------------------------------------------------------------
Aumentar un 20% el precio de lista de los productos del proveedor 1540
Tablas: Produccion, Production.Product, Purchasing.ProductVendor
Campos: ProductID, ListPrice, BusinessEntityID
*/

UPDATE p
SET ListPrice = ListPrice * 1.2
FROM Productos AS p
INNER JOIN Purchasing.ProductVendor AS v
ON p.ProductID = v.ProductID
WHERE BusinessEntityID = 1540;

/*
------------------------------------------------------------------------------------
Eliminar los productos cuyo precio sea igual a cero
Tablas: Produccion
Campos: precio
*/

DELETE 
FROM Productos
WHERE ListPrice = 0;

/*
------------------------------------------------------------------------------------
Insertar un producto dentro de la tabla productos. tener en cuenta los siguientes datos.
el color de producto debe ser rojo, el nombre debe ser "bicicleta mountain bike"
y el precio de lista debe ser de 4000 pesos.
Tablas: Productos
Campos: Color, Nombre, Precio
*/

INSERT INTO Productos(Name, Color, ListPrice)
VALUES ('Bicicleta Mountain Bike', 'Rojo', 4000);

/*
------------------------------------------------------------------------------------
Aumentar en un 15% el precio de los pedales de bicicleta​ 
Tablas: Productos            
Campos: Nombre, Precio
*/

UPDATE Productos
SET ListPrice = ListPrice * 1.15
WHERE Name LIKE '%pedal%';

/*
------------------------------------------------------------------------------------
Eliminar de las productos cuyo nombre empiece con la letra m
Tablas: Productos
Campos: Nombre
*/

DELETE Productos
WHERE name LIKE 'm%'
SELECT *
FROM Productos;

/*
------------------------------------------------------------------------------------
Borrar todo el contenido de la tabla producto sin utilizar la instrucción delete.
Tablas: Productos
*/

TRUNCATE TABLE productos;

/*
------------------------------------------------------------------------------------
Eliminar tabla productos
Tablas: Productos
*/

DROP TABLE productos;