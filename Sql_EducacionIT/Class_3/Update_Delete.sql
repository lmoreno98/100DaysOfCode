-- This is for modifie multples rows
SET SQL_SAFE_UPDATES = 0;
USE test;

-- Change the age of juan from 25 to 26
UPDATE clientes 
SET edad = 26 
WHERE nombre = "Juan";


-- Create a table to delete
CREATE TABLE test_delete(id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    nombre VARCHAR(60) NOT NULL,
                    dni VARCHAR(9) NOT NULL,
                    UNIQUE KEY(dni),
                    PRIMARY KEY(id)
                    );
INSERT INTO test_delete VALUES(0,"Santiago",12345678),
						   (0,"Juan manuel",15648949),
                           (0,"Juan",123547);

-- Delete all the values of a table and the incremet
TRUNCATE test_delete;

-- to delete but save the auto increment we use delete from
DELETE FROM test_delete