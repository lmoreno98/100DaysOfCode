USE test;

-- Nos muestra los valores de las columnas y que tipo son
DESC clientes;

-- Select para todos los valores
SELECT * 
FROM clientes;

-- Select para pocos valores
SELECT nombre, apellido
FROM clientes;

-- Creamos nuevas tablas con valores
SELECT (1+1) AS Resultado, (3.14 * 2) AS Pi_2;

-- Order by ascendent
SELECT id, nombre, apellido, edad
FROM clientes
ORDER BY nombre ASC;

-- Order by descendent
SELECT id, nombre, apellido, edad
FROM clientes
ORDER BY nombre DESC;

-- Operador limit 
SELECT id, nombre, apellido, edad
FROM clientes
LIMIT 1;

-- OPERADOR ofset saltea los valores puestos
SELECT id, nombre, apellido, edad
FROM clientes
LIMIT 1
OFFSET 3;

-- Crear otra columna con algun valor de otra columna
SELECT id, nombre, apellido, edad, edad+10 AS "EDAD EN 10 AÑOS"
FROM clientes