/*
Mostrar las personas ordenadas primero por su apellido y luego por su nombre​  
Tablas:Person.Person      
Campos: Firstname, Lastname             
*/

SELECT FirstName, LastName
FROM Person.Person
ORDER BY LastName, FirstName;

/*
Mostrar cinco productos más caros y su nombre ordenado en forma alfabética​ 
Tablas:Production.Product      
Campos: Name, ListPrice
*/
	
SELECT TOP 5 NAME,ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;
