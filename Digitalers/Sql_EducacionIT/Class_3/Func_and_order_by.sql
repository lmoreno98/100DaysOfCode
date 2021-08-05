USE test;

-- Contar los regitros de una base de datos
SELECT count(id) AS Cantidad
FROM clientes;

-- Group By 
SELECT apellido, COUNT(apellido) AS "cantidad de apellidos"
FROM clientes
GROUP BY apellido;

-- Group_concat nos da los valores repetidos por comas
SELECT GROUP_CONCAT(nombre), COUNT(apellido) AS "cantidad de apellidos"
FROM clientes
GROUP BY apellido;

USE laboratorio;
-- MAX 
SELECT MAX(precio) AS "El producto mas caro"
FROM articulos;

-- MIN 
SELECT MIN(precio) AS "El producto mas barato"
FROM articulos;

-- SUM 
SELECT SUM(precio) AS "SUma de los precios"
FROM articulos;

-- AvG 
SELECT AVG(precio) AS "precio promedio de precio"
FROM articulos;

-- HAVING se usa para las columnas que se crean en el momento