CREATE OR REPLACE VIEW v_compra_dia AS
SELECT 	c.anio,
		c.trimestre,
        c.mes,
        co.Fecha,
        p.IdProducto,
        p.Producto,
        t.TipoProducto,
        pr.Nombre as Proveedor,
        co.Precio,
        co.Cantidad
FROM compra co JOIN producto p
		ON (co.IdProducto = p.IdProducto)
    JOIN tipo_producto t
    	ON (p.IdTipoProducto = t.IdTipoProducto)
    JOIN calendario c
    	ON (co.Fecha = c.fecha)
    JOIN proveedor pr
    	ON (co.IdProveedor = pr.IdProveedor);
		
CREATE OR REPLACE VIEW v_venta_dia AS
SELECT 	ca.anio,
		ca.trimestre,
		ca.mes,
		v.Fecha,
		v.Fecha_Entrega,
        DATEDIFF(v.Fecha_Entrega, v.Fecha) AS Demora_Entrega,
        c.Nombre_y_Apellido,
		c.Rango_Etario,
        l.Localidad,
        p.Provincia,
        cn.Canal,
        po.IdProducto,
        po.Producto,
        tpo.TipoProducto,
        s.IdSucursal,
        s.Sucursal,
        CONCAT(e.CodigoEmpleado, " - ", e.Apellido, ", ", e.Nombre) as Vendedor,
        v.Precio,
		v.Costo,
        v.Cantidad
FROM venta v JOIN cliente c
		ON (v.IdCliente = c.IdCliente)
    JOIN localidad l
    	ON (c.IdLocalidad = l.IdLocalidad)
    JOIN provincia p
    	ON (l.IdProvincia = p.IdProvincia)
    JOIN calendario ca
    	ON (v.Fecha = ca.fecha)
	JOIN canal_venta cn
    	ON (v.IdCanal = cn.IdCanal)
    JOIN producto po
    	ON (v.IdProducto = po.IdProducto)
    JOIN tipo_producto tpo
    	ON (po.IdTipoProducto = tpo.IdTipoProducto)
    JOIN sucursal s
    	ON (v.IdSucursal = s.IdSucursal)
    JOIN empleado e
    	ON (v.IdEmpleado = e.IdEmpleado)
WHERE v.Outlier = 1;