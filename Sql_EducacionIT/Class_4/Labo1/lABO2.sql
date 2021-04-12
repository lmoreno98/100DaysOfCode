USE laboratorio;

-- 1.Informar nombre y apellido de los clientes que han realizado compras.
SELECT distinct c.nombre, c.apellido
FROM clientes AS c
INNER JOIN facturas as f
ON c.ClienteID = f.ClienteID;

-- 2.Informar nombre y apellido de los clientes que tienen facturas con monto mayor a 2000 pesos.
SELECT c.nombre, c.apellido, f.monto
FROM clientes AS c
INNER JOIN facturas as f
ON c.ClienteID = f.ClienteID
WHERE f.monto > 200;

-- 3.Informar letra y número de factura, el nombre y el precio de los artículos que se han vendido.
SELECT f.letra, f.numero, a.nombre, ROUND(a.precio,3) AS precio
FROM articulos AS a
INNER JOIN facturas as f
ON a.ArticuloID = f.ArticuloID;

-- 4.Informar el precio máximo y mínimo de los artículos facturados con letra A.
SELECT MAX(precio) 'Precio Máximo', MIN(precio) 'Precio Mínimo' 
FROM Facturas f 
JOIN Articulos a
ON f.articuloid = a.articuloid
WHERE letra = 'A';
    
-- 5.Informar la cantidad de facturas, nombre y apellido de cada cliente.
SELECT nombre, apellido, Count(*) 
FROM Clientes c
JOIN Facturas f ON c.clienteid = f.clienteid 
GROUP BY nombre, apellido;

-- 6.Informar el promedio de venta para los artículos con precio >10.
SELECT AVG(monto) 'Promedio' FROM Facturas f JOIN Articulos a ON f.articuloid = a.articuloid 
WHERE precio ;

-- 7.Informar nombre y apellido y total de monto de facturas por año para cada cliente.
SELECT nombre, apellido, YEAR(fecha) 'Año', Sum(monto) 'Monto de facturas' 
FROM Facturas f 
JOIN Clientes c
ON f.clienteid = c.clienteid Group By nombre, apellido, YEAR(fecha);
    
-- 8.Informar qué facturas fueron emitidas al cliente Diaz.
SELECT letra, numero 
FROM Facturas f 
JOIN Clientes c 
ON f.clienteid = c.clienteid 
WHERE apellido ='Gonzalez';
    
-- 9.Informar el total vendido por artículo.
	SELECT f.articuloid, Sum(monto) 'Total vendido' 
    FROM Facturas f 
    JOIN Articulos a 
    ON f.articuloid = a.articuloid Group By f.articuloid;
    
-- 10.Informar nombre y apellido del cliente que más ha comprado.
SELECT nombre, apellido, Sum(monto) Monto 
FROM Clientes c
JOIN Facturas f 
ON c.clienteid = f.clienteid 
GROUP BY nombre, apellido Order By Sum(monto) Desc Limit 1;