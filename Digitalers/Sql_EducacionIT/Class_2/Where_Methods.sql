USE test;

-- Where nos muestra los valores que esten incluidos en la consulta edad igual a 19
SELECT id, nombre, apellido, edad
FROM clientes
WHERE edad = 19;

-- Where nos muestra los valores que esten incluidos en la consulta edad mayor a 19
SELECT id, nombre, apellido, edad
FROM clientes
WHERE edad > 19;

-- Where campo texto
SELECT id, nombre, apellido, edad
FROM clientes
WHERE nombre = "juan";

-- Operador booleano "AND"
SELECT id, nombre, apellido, edad
FROM clientes
WHERE apellido = "moreno" and nombre = "luciano";

-- Operador booleano "OR"
SELECT id, nombre, apellido, edad
FROM clientes
WHERE nombre = "luciano" OR edad = 18;

-- Operador like
SELECT id, nombre, apellido, edad
FROM clientes
WHERE nombre LIKE '%juan%';

-- Between nos muestra valores entre dos puntos
SELECT id, nombre, apellido, edad
FROM clientes
WHERE edad BETWEEN 19 AND 24;

-- Not Between nos muestra valores que no estan entre dos puntos
SELECT id, nombre, apellido, edad
FROM clientes
WHERE edad NOT BETWEEN 19 AND 24;

-- Consulta in
SELECT id, nombre, apellido, edad
FROM clientes
WHERE edad in (18,25);

-- Los valores null aunque le demos otra valor siempre devuelve Null
INSERT INTO prueba 
VALUES(2,"Juan","38932693"),
	  (3,"Ricardo","21138353");

-- Compara valores en dos tablas distintas
SELECT *
FROM clientes
WHERE nombre IN (SELECT nombre FROM prueba);