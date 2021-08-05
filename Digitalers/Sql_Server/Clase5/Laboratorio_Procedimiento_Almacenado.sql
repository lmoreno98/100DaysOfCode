USE AdventureWorks2019;

/*
Crear un procedimiento almacenado en el esquema Human Resources que dada una determinada inicial, devuelva codigo, nombre, apellido y dirección de correo de los empleados cuyo nombre coincida con la inicial ingresada
Vistas: HumanResources.vEmployee
Campos: BusinessEntityID, FirstName, LastName, EmailAddress
*/
IF OBJECT_ID ('dbo.Empleados_Inicial', 'P' ) IS NOT NULL    
DROP PROCEDURE dbo.Empleados_Inicial;
GO

CREATE PROCEDURE dbo.Empleados_Inicial
	@Inicial_Name VARCHAR(1)
AS
	SELECT BusinessEntityID, FirstName, LastName, EmailAddress
	FROM HumanResources.vEmployee
	WHERE FirstName LIKE (@Inicial_Name + '%')
GO

EXEC dbo.Empleados_Inicial 'A';

/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear un procedimiento almacenado llamado Producto Vendido que permita ingresar un producto como parámetro, si el producto ha sido vendido imprimir el mensaje “El PRODUCTO HA SIDO VENDIDO”
de lo contrario imprimir “El PRODUCTO NO HA SIDO VENDIDO”
Tablas: Sales.SalesOrderDetail
Campos: ProductID
*/

IF OBJECT_ID ('dbo.Producto_vendido', 'P' ) IS NOT NULL    
DROP PROCEDURE dbo.Producto_vendido;
GO


CREATE PROCEDURE dbo.Producto_vendido
	@Product INT
AS
	IF EXISTS (SELECT ProductID FROM Sales.SalesOrderDetail WHERE ProductID = @Product)
		PRINT 'El PRODUCTO HA SIDO VENDIDO'
	ELSE
		PRINT 'El PRODUCTO NO HA SIDO VENDIDO'
GO

EXEC dbo.Producto_vendido 707;


/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear un procedimiento almacenado en el esquema dbo para la actualización de precios llamado Actualiza Precio recibiendo como parámetros el producto y el precio
Tablas: Production.Product
Campos: ProductID, Name, ListPrice
*/

IF OBJECT_ID ('dbo.Actualiza_Precio', 'P' ) IS NOT NULL    
DROP PROCEDURE dbo.Actualiza_Precio;
GO


CREATE PROCEDURE dbo.Actualiza_Precio
	@Product INT,
	@Price FLOAT 
AS
	UPDATE Production.Product
	SET ListPrice = @Price
	WHERE ProductID = @Product
GO

EXEC dbo.Actualiza_Precio 707, 34.99

/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear un procedimiento almacenado llamado Proveedor Producto que devuelva los proveedores que proporcionan el producto especificado por parámetro.
Tablas: Purchasing.Vendor, Purchasing.ProductVendor, Production.Product
Campos: Name
*/

IF OBJECT_ID ('dbo.ProveedorProducto', 'P' ) IS NOT NULL    
DROP PROCEDURE dbo.ProveedorProducto;
GO

CREATE PROCEDURE dbo.ProveedorProducto
	@Product INT
AS
	SELECT P.Name
	FROM Purchasing.Vendor AS V
	INNER JOIN Purchasing.ProductVendor AS PV
	ON V.BusinessEntityID = PV.BusinessEntityID
	INNER JOIN Production.Product AS P
	ON PV.ProductID = P.ProductID
	WHERE P.ProductID = @Product
GO

EXEC dbo.ProveedorProducto 707


/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Crear un procedimiento almacenado llamado Empleado Sector que devuelva nombre,apellido y sector del empleado que le pasemos como argumento.no es necesario pasar el nombre y apellido exactos al procedimiento.
Vistas​:​​HumanResources.vEmployeeDepartmentHistory
Campos​: ​FirstName, LastName,Department
*/

IF OBJECT_ID ('dbo.EmpleadoSector', 'P' ) IS NOT NULL    
DROP PROCEDURE dbo.EmpleadoSector;
GO

CREATE PROCEDURE dbo.EmpleadoSector
	@Name VARCHAR(50),
	@LastName VARCHAR(50)
AS
	SELECT FirstName, LastName,Department
	FROM HumanResources.vEmployeeDepartmentHistory
	WHERE FirstName LIKE '%' + @Name + '%' AND 
	      LastName LIKE '%' + @LastName + '%'

GO 

EXEC dbo.EmpleadoSector ar,ib
