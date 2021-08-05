/*
Mostrar los empleados que tienen más de 90 horas de vacaciones
Tablas: HumanResources.Employee
Campos: VacationHours, BusinessEntityID
*/

SELECT VacationHours, BusinessEntityID
FROM HumanResources.Employee
WHERE VacationHours > 90;

/*
---------------------------------------------------------------------------------------------------
Mostrar el nombre, precio y precio con iva de los productos con precio distinto de cero
Tablas:Production.Product
Campos: Name, ListPrice
*/

SELECT Name,ListPrice,ListPrice*1.21 AS Precio_Iva
FROM Production.Product
WHERE ListPrice <> 0;

/*
---------------------------------------------------------------------------------------------------
Mostrar precio y nombre de los productos 776, 777, 778
Tablas:Production.Product
Campos: ProductID, Name, ListPrice
*/

SELECT ProductID,Name,ListPrice
FROM Production.Product
WHERE ProductID BETWEEN 776 AND 778;

/*
---------------------------------------------------------------------------------------------------
Mostrar el nombre concatenado con el apellido de las personas cuyo apellido sea johnson
Tablas:Person.Person
Campos: FirstName, LastName
*/

SELECT CONCAT(FirstName,' ', LastName) AS Complete_Name
FROM Person.Person
WHERE LastName LIKe('johnson');

/*
---------------------------------------------------------------------------------------------------
Mostrar todos los productos cuyo precio sea inferior a 150$ de color rojo o cuyo precio sea mayor a 500$ de color negro
Tablas:Production.Product
Campos: ListPrice, Color
*/

SELECT ListPrice,Color
FROM Production.Product
WHERE (ListPrice <= 150 AND Color LIKE 'Red') OR (ListPrice >= 500 AND Color LIKE 'Black');

/*
---------------------------------------------------------------------------------------------------
Mostrar el código, fecha de ingreso y horas de vacaciones de los empleados ingresaron a partir del año 2000
Tablas: HumanResources.Employee
Campos: BusinessEntityID, HireDate, VacationHours
*/

SELECT BusinessEntityID, HireDate, VacationHours
FROM HumanResources.Employee
WHERE YEAR(HireDate) >= 2000;

/*
---------------------------------------------------------------------------------------------------
Mostrar el nombre, número de producto, precio de lista y el precio de lista incrementado en un 10%
	de los productos cuya fecha de fin de venta sea anterior al día de hoy.
Tablas: Production.Product
Campos: Name, ProductNumber, ListPrice, SellEndDate
*/

SELECT Name, ProductNumber, SellEndDate, ListPrice, ListPrice+(ListPrice*0.1) AS IncrementedPrice
FROM Production.Product
WHERE SellEndDate < GETDATE(); 

/*
-------------------------------------------------------------------------------------------------------
Null Laboratorie
-------------------------------------------------------------------------------------------------------
*/

/*
-------------------------------------------------------------------------------------------------------
Mostrar los representantes de ventas (vendedores) que no tienen definido el número de territorio
Tablas: Sales.SalesPerson
Campos: TerritoryID, BusinessEntityID
*/

SELECT TerritoryID, BusinessEntityID
FROM Sales.SalesPerson
WHERE TerritoryID is NULL;

/*
-------------------------------------------------------------------------------------------------------
Mostrar el peso de todos los artículos. si el peso no estuviese definido, reemplazar por cero
Tablas:Production.Product
Campos: Weight
*/

SELECT ISNULL(Weight,0) AS Weight
FROM Production.Product;