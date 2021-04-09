-- llamamos a la base de datos
USE test;

CREATE TABLE facturas(
	tipo ENUM("A","B","C")NOT NULL DEFAULT "A",
    numero INT UNSIGNED NOT NULL,
    PRIMARY KEY(tipo,numero)
);

-- Los primeros dos valores [A;1] , [B;1] y [C;1] se ponen porque no coinciden los dos al mismo tiempo 
INSERT INTO facturas (tipo,numero) VALUES("A","1");
INSERT INTO facturas (tipo,numero) VALUES("B","1");
INSERT INTO facturas (tipo,numero) VALUES("C","1");

-- Este no entra poruqe concide con el primero puesto
INSERT INTO facturas (tipo,numero) VALUES("A","1");