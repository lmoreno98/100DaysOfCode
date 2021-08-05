DROP TABLE IF EXISTS Agenda;

CREATE TABLE Agenda(
						Contacto	INTEGER,
						Nombre 	VARCHAR(50),
                        Domicilio INT,
                        Telefono VARCHAR(9),
                        PRIMARY KEY (Contacto)
);
-- Mirar las tablas que existen
SHOW TABLES;

-- Valores de tabla agenda
DESCRIBE AGENDA;