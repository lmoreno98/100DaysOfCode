-- llamamos a la base de datos
USE test;

-- Creamos una primary key con auto incremet 
CREATE TABLE clientes(
					id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    nombre VARCHAR(60) NOT NULL,
                    apellido VARCHAR(60) NOT NULL,
                    edad INT UNSIGNED NOT NULL,
                    PRIMARY KEY(id)
);
-- Manera mas completa de insertar valores
INSERT INTO clientes (nombre,apellido,edad) VALUES ("Juan","Moreno","25");

-- Manera de mysql
INSERT INTO clientes
SET nombre = "Luciano",
	apellido = "Moreno",
    edad = 23;

-- Insert simpplificado
INSERT INTO clientes VALUES(0,"Santiago","Moreno",18),
						   (0,"Juan manuel","Rodriguez",19)