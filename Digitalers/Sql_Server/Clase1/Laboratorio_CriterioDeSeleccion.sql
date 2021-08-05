/*
Mostrar el nombre,precio y color de los accesorios para asientos de las bicicletas cuyo precio sea mayor a 100 pesos
Tablas: Production.Product
Campos: Name, ListPrice, Color
*/

SELECT Name,ListPrice,Color
FROM Production.Product
WHERE Name LIKE '%Seat%' AND  ListPrice >= 100;

/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar los nombre de los productos que tengan cualquier combinaci�n de �mountain bike�
Tablas: Production.Product
Campos: Name
*/

SELECT Name
FROM Production.Product
WHERE Name LIKE '%mountain bike%' ;

/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar las personas cuyo nombre empiece con la letra �y�
Tablas: Person.Person
Campos: FirstName    
*/

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'y%';

/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar las personas que la segunda letra de su apellido es una s
Tablas: Person.Person
Campos: LastName    
*/

SELECT LastName
FROM Person.Person
WHERE LastName LIKE '_s%';

/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar el nombre concatenado con el apellido de las personas cuyo apellido tengan terminaci�n espa�ola (ez)
Tablas: Person.Person
Campos: FirstName, LastName   
*/

SELECT CONCAT(FirstName,' ', LastName)
FROM Person.Person
WHERE LastName LIKE '%ez';
/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar los nombres de los productos que terminen en un n�mero
Tablas:  Production.Product
Campos: Name
*/

SELECT Name
FROM Production.Product
WHERE Name LIKE '%[0-9]';

/*
-------------------------------------------------------------------------------------------------------------------------
Mostrar las personas cuyo  nombre tenga una C o c como primer car�cter,cualquier otro como segundo car�cter,
ni d ni e ni f ni g como tercer car�cter,
cualquiera entre j y r o entre s y w como cuarto car�cter  y el resto sin restricciones
Tablas: Person.Person
Campos: FirstName
*/

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[C:c]_[^d-f][j-r:s-w]%';

/*
---------------------------------------------------------------------------------------------------------------------
Laboratorio Between
*/

/*
Mostrar todos los productos cuyo precio de lista est� entre 200 y 300
Tablas: Production.Product
Campos: ListPrice
*/

SELECT ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 200 AND 300;

/*
Mostrar todos los empleados que nacieron entre 1970 y 1985
Tablas: HumanResources.Employee
Campos: BirthDate
*/

SELECT BirthDate
FROM HumanResources.Employee
WHERE YEAR(BirthDate) BETWEEN 1970 AND 1985;

/*
Mostrar ella fecha, numero de version y subtotal de las ventas efectuadas en los a�os 2005 y 2006
Tablas: Sales.SalesOrderHeader
Campos: OrderDate, AccountNumber, SubTotal
*/

SELECT OrderDate, AccountNumber, SubTotal
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) BETWEEN 2005 AND 2006;

/*
Mostrar todos los productos cuyo Subtotal  no est� entre 50 y 70
Tablas: Sales.SalesOrderHeader
Campos: OrderDate, AccountNumber, SubTotal
*/

SELECT OrderDate, AccountNumber, SubTotal
FROM Sales.SalesOrderHeader
WHERE SubTotal NOT BETWEEN 50 AND 70;

/*
---------------------------------------------------------------------------------------------------------------------
Laboratorio IN
*/

/*
---------------------------------------------------------------------------------------------------------------------
Mostrar los c�digos de venta y producto ,cantidad de venta y precio unitario de los art�culos 750, 753 y 770
Tablas: Sales.SalesOrderDetail
Campos: SalesOrderID, OrderQty, ProductID, UnitPrice
*/

SELECT SalesOrderID, OrderQty, ProductID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE ProductID IN (750,753,770);

/*
---------------------------------------------------------------------------------------------------------------------
Mostrar todos los productos cuyo color sea verde, blanco y azul
Tablas: Production.Product
Campos: Color
*/

SELECT Color
FROM Production.Product
WHERE Color IN ('Green','White','Blue');