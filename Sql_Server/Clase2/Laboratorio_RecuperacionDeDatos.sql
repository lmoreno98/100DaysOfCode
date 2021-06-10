/*
Mostrar los diferentes productos vendidos
Tablas: Sales.SalesOrderDetail
Campos: ProductID
*/

SELECT DISTINCT ProductID
FROM Sales.SalesOrderDetail;

/*
--------------------------------------------------------------------------------------------------
Mostrar todos los productos vendidos y ordenados
Tablas: Sales.SalesOrderDetail, Production.WorkOrder
Campos: ProductID
*/

SELECT ProductID
FROM Sales.SalesOrderDetail
UNION ALL
SELECT ProductID
FROM Production.WorkOrder;

/*
--------------------------------------------------------------------------------------------------
Mostrar los diferentes productos vendidos y ordenados
Tablas: Sales.SalesOrderDetail, Production.WorkOrder
Campos: ProductID
*/

SELECT ProductID
FROM Sales.SalesOrderDetail
UNION
SELECT ProductID
FROM Production.WorkOrder;

/*
--------------------------------------------------------------------------------------------------
Obtener el id y una columna denominada sexo cuyo valores disponibles sean “Masculino” y ”Femenino”
Tablas: HumanResources.Employee
Campos: BusinessEntityID, Gender
*/

SELECT BusinessEntityID,
		SEX = CASE Gender
				WHEN 'M' THEN 'Male'
				WHEN 'F' THEN 'Female'
				ELSE 'Not Specified'
			END
FROM HumanResources.Employee;

/*
--------------------------------------------------------------------------------------------------
Mostrar el id de los empleados si tiene salario deberá mostrarse descendente de lo contrario ascendente
Tablas:HumanResources.Employee
Campos: BusinessEntityID, SalariedFlag
*/

SELECT BusinessEntityID, SalariedFlag
FROM HumanResources.Employee
ORDER BY CASE WHEN SalariedFlag = 0 
			  THEN BusinessEntityID 
			  END ASC, 
		 CASE WHEN SalariedFlag = 1 
			  THEN BusinessEntityID 
			  END DESC
;