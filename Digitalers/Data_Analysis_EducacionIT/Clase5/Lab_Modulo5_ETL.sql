ALTER TABLE `venta` ADD `Costo` FLOAT NOT NULL AFTER `Outlier`;

-- SELECT v.*, c.Precio_Compra FROM
UPDATE venta v JOIN sucursal s ON (v.IdSucursal = s.IdSucursal)
	JOIN localidad l ON (l.IdLocalidad = s.IdLocalidad)
    JOIN (SELECT c.IdProducto, l.IdProvincia, AVG(c.Precio) AS Precio_Compra
          FROM compra c JOIN proveedor p ON c.IdProveedor = p.IdProveedor
          JOIN localidad l ON (l.IdLocalidad = p.IdLocalidad)
          GROUP BY c.IdProducto) c
          ON (c.IdProducto = v.IdProducto
             AND c.IdProvincia = l.IdProvincia)
SET v.Costo = ROUND(c.Precio_Compra, 2);

UPDATE venta v JOIN (SELECT c.IdProducto, AVG(c.Precio) AS Precio_Compra
          FROM compra c GROUP BY c.IdProducto) c
          ON (c.IdProducto = v.IdProducto AND v.Costo = 0)
SET v.Costo = ROUND(c.Precio_Compra, 2);
