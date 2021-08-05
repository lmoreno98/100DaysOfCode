 SET SQL_SAFE_UPDATES = 0;
 USE laboratorio;
 

-- 1.Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar campos como parte de la sentencias, es decir de la forma simplificada.
 INSERT INTO clientes VALUES((125,"Santiago","Moreno", 20439637423, "Rawson 425"),
(428, "Luciano"	"Moreno", 20409808493,	"Av de Mayo 1156"),
(472, "Silvia Patricia", "Gonzalez" , 23228136016 ,"Rawson 425"),
(562, "Ricardo Alberto",	"Moreno",	20211383535,	"Uruguayana 725"),
(725, "Juan Cruz",	"Moreno",	20389326963, "Av de Mayo 1156"));

-- 2.Actualizar el nombre del cliente 1 a José.
UPDATE clientes
SET nombre = "Jose"
LIMIT 1;

-- 3.Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
UPDATE clientes
SET nombre = "Pablo", apellido = "Fuentes", Cuit = 20210531190
WHERE ClienteID = 472;

-- 4.Actualizar todos los comentarios NULL  a ‘’.
UPDATE clientes
SET comentarios = '"'
WHERE comentarios IS NULL;

-- 5.Eliminar los clientes con apellido Fuentes.
DELETE FROM clientes
WHERE apellido = "Fuentes";

-- 6.Eliminar los clientes con CUIT Terminan en 3.
DELETE FROM clientes
WHERE Cuit LIKE "%3";

-- 7.Aumentar un 20% los precios de los artículos con precio menor igual a 50.
UPDATE articulos
SET precio = precio*1.20
WHERE precio <= 50;

-- 8.Aumentar un 15% los precios de los artículos con precio mayor a 50.
UPDATE articulos
SET precio = precio*1.15
WHERE precio > 50;

-- 9.Bajar un 5% los precios de los artículos con precio mayor a 200.
UPDATE articulos
SET precio = precio* 0.95
WHERE precio > 200;

-- 10.Eliminar los artículos con stock menor a 0
DELETE FROM articulos
WHERE stock < 0;