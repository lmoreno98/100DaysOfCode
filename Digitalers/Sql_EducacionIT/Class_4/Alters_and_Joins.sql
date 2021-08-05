USE test;

-- Create the two tables
CREATE TABLE productos(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
categoria VARCHAR(15),
nombre VARCHAR(35),
precio FLOAT,
stock INTEGER,
marca INTEGER,
PRIMARY KEY(id));

CREATE TABLE marcas(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
marca VARCHAR(25),
PRIMARY KEY(id));

-- INSERT VALUES
INSERT INTO productos VALUES
(0,"Televisores","TV LCD 19' MODELO PFL3403",2199,40,3),
(0,"Televisores","TV LCD 22' MODELO LN22A450",2399,47,3),
(0,"Televisores","TV LCD 32' MODELO LC813H",2699,48,2),
(0,"Televisores","TV LCD 19' MODELO 26LG30R",2000,55,2),
(0,"Televisores","TV LCD 26' MODELO CDH-L26S02",2999,45,1),
(0,"Televisores","TV LCD 32' MODELO PL3219",3399,23,5),
(0,"Computadoras","CPU L31250DVD2GB160VS",2199,55,2);

INSERT INTO marcas VALUES
(0,"PHILIPS"),
(0,"SAMSUNG"),
(0,"APPLE"),
(0,"HITACHI"),
(0,"LG");

-- Inner Join
SELECT p.id,p.categoria,p.nombre,p.precio,p.stock,m.marca
FROM productos AS p
INNER JOIN marcas AS m
ON p.marca = m.id;

-- Agregar columnas 
ALTER TABLE productos 
ADD observacionees VARCHAR(250) NULL;

-- Modificacion de columnas
ALTER TABLE productos
CHANGE observacionees categ VARCHAR(80);

-- Borrar columna en tabla
ALTER TABLE productos 
DROP categ;

-- Renombrar tabla
RENAME TABLE prueba TO renamed_table;

SELECT * FROM productos;