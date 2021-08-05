USE laboratorio;

-- Creo la tabla facturas
CREATE TABLE Facturas(
						Letra CHAR,
						Numero INT,
						ClienteID INT,
						ArticuloID INT,
						Fecha DATE,
						Monto DOUBLE UNSIGNED,
						PRIMARY KEY(Letra,Numero));

-- Creo la tabla Articulos
CREATE TABLE Articulos(
						ArticuloID	INTEGER,
						Nombre 	VARCHAR(50),
                        Precio 	DOUBLE,
                        Stock 	INT,
                        PRIMARY KEY (ArticuloID)
);

-- Creo la tabla Clientes
CREATE TABLE Clientes(
						ClienteID INT,
                        Nombre VARCHAR(50),
                        Apellido VARCHAR(50),
                        Cuit CHAR(16),
                        Direccion VARCHAR(50),
                        Comentarios VARCHAR(50),	
                        PRIMARY KEY (ClienteID)
);

-- Inserto 5 valores
INSERT INTO Facturas 
VALUES("A",5,428,145,"2021/10/05",300.72),
	  ("B",4,725,309,"2020/12/10",720.45),
      ("C",1,562,492,"2021/01/25",430.99),
      ("D",5,125,573,"2021/07/22",535.44),
      ("E",7,472,696,"2020/10/05",456.22);

INSERT INTO Articulos
VALUES(145,"MotherBoard",729,50),
	  (309,"8GB Ram",120,195),
      (492,"GTX950",1200,32),
      (573,"Monitor",252,300),
      (696,"Teclado",25,1235);

INSERT INTO Clientes 
VALUES(428,"Luciano","Moreno",20409808493,"Av de Mayo 1156",NULL),
      (725,"Juan Cruz","Moreno",20389326963,"Av de Mayo 1156",NULL),
      (562,"Ricardo Alberto","Moreno",20211383535,"Uruguayana 725",NULL),
      (125,"Santiago","Moreno",20439637423,"Rawson 425",NULL),
      (472,"Silvia Patricia","Gonzalez",23228136016,"Rawson 425",NULL);
      
-- Mostrar las tablas 
SELECT * 
from Facturas;

SELECT * 
from Articulos;

SELECT * 
from Clientes;