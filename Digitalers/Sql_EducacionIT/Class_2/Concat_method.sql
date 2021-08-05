USE laboratorio;

SELECT * 
FROM clientes;

SELECT CONCAT(";",nombre,apellido) AS "Nombre completo"
FROM clientes;

SELECT CONCAT_WS(";",nombre,apellido) AS "Nombre completo"
FROM clientes;

SELECT CONCAT(LEFT(nombre,1),".") AS "Nombre completo"
FROM clientes;