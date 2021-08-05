-- llamamos a la base de datos
USE test;

-- Creamos una primary key con auto incremet 
CREATE TABLE prueba1(
					id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    nombre VARCHAR(60) NOT NULL,
                    PRIMARY KEY(id)
);
-- Insertamos solo el nombre porque el id se va a auto incrementar
INSERT INTO prueba1 (nombre) VALUES("Luciano");
INSERT INTO prueba1 (nombre) VALUES("Juan");
INSERT INTO prueba1 (nombre) VALUES("Santiago");

-- Miramos los valores en la tabla
SELECT *
FROM prueba1;
