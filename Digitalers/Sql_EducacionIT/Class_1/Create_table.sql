-- Creamos una tabla con id, nombre dni
-- dni como unique key
-- id como primary key
CREATE TABLE prueba(
					id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    nombre VARCHAR(60) NOT NULL,
                    dni VARCHAR(9) NOT NULL,
                    UNIQUE KEY(dni),
                    PRIMARY KEY(id)
                    );

-- Podemos poner el primer dato porque no habia ninguno con ese numero de dni
INSERT INTO prueba (nombre,dni) VALUES("Luciano","12345678");
-- No podemos poner el valor porque luciano ya  tiene ese numero de dni
INSERT INTO prueba (nombre,dni) VALUES("Juan","12345678");