USE laboratorio;
-- Foreing key session
SET FOREIGN_KEY_CHECKS=0;

-- 1 Agregar la relación(FK) entre la tabla Facturas y la tabla Clientes.
ALTER TABLE facturas ADD CONSTRAINT fk_fact_cli
FOREIGN KEY(ClienteID) REFERENCES clientes(ClienteID);


-- 1 Agregar la relación(FK) entre la tabla Facturas y la tabla Clientes.
ALTER TABLE facturas ADD CONSTRAINT fk_fact_art
FOREIGN KEY(ArticuloID) REFERENCES articulos(ArticuloID);

-- 3.Generar un error de FK en la tabla Facturas.
INSERT INTO facturas 
VALUES('T', '5', '428', '145', '2021-10-05', '300.72');

-- 4.Agregar la columna CPostal a la tabla Clientes. 
ALTER TABLE clientes 
ADD CPostal INT;

-- 5.Eliminar la columna CPostal de la tabla Clientes.
ALTER TABLE clientes
DROP CPostal
