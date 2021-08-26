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
        v.Precio,
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
WHERE v.Outlier = 1;
		
CREATE OR REPLACE VIEW v_gasto_dia AS
SELECT 	c.anio,
		c.trimestre,
		c.mes,
        g.Fecha,
        s.Sucursal,
        s.IdSucursal,
        t.Tipo_Gasto,
        l.Localidad,
        p.Provincia,
        g.Monto
FROM gasto g JOIN sucursal s
    	ON (g.IdSucursal = s.IdSucursal)
    JOIN localidad l
    	ON (s.IdLocalidad = l.IdLocalidad)
    JOIN provincia p
    	ON (l.IdProvincia = p.IdProvincia)
    JOIN tipo_gasto t
    	ON (g.IdTipoGasto = t.IdTipoGasto)
    JOIN calendario c
    	ON (g.Fecha = c.fecha);
		
CREATE OR REPLACE VIEW v_compra_dia AS
SELECT 	c.anio,
		c.trimestre,
        c.mes,
        co.Fecha,
        p.IdProducto,
        p.Producto,
        t.TipoProducto,
        co.Precio,
        co.Cantidad
FROM compra co JOIN producto p
		ON (co.IdProducto = p.IdProducto)
    JOIN tipo_producto t
    	ON (p.IdTipoProducto = t.IdTipoProducto)
    JOIN calendario c
    	ON (co.Fecha = c.fecha);
		
CREATE OR REPLACE VIEW v_venta_mes_sucursal AS
SELECT c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        l.Localidad,
        p.Provincia,
        SUM(v.Precio * v.Cantidad)	AS venta,
        SUM(v.Cantidad)				AS venta_cantidad,
        COUNT(v.IdVenta)			AS venta_volumen
FROM venta v JOIN sucursal s
    	ON (v.IdSucursal = s.IdSucursal)
    JOIN localidad l
    	ON (s.IdLocalidad = l.IdLocalidad)
    JOIN provincia p
    	ON (l.IdProvincia = p.IdProvincia)
    JOIN calendario c
    	ON (v.Fecha = c.fecha)
WHERE v.Outlier = 1
GROUP BY c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        l.Localidad,
        p.Provincia;

CREATE OR REPLACE VIEW v_venta_mes_producto AS
SELECT 	c.anio,
		c.trimestre,
        c.mes,
        p.IdProducto,
        p.Producto,
        t.TipoProducto,
        SUM(v.Precio * v.Cantidad)	AS venta,
        SUM(v.Cantidad)				AS venta_cantidad,
        COUNT(v.IdVenta)			AS venta_volumen
FROM venta v JOIN producto p
		ON (v.IdProducto = p.IdProducto)
    JOIN tipo_producto t
    	ON (p.IdTipoProducto = t.IdTipoProducto)
    JOIN calendario c
    	ON (v.Fecha = c.fecha)
WHERE v.Outlier = 1
GROUP BY c.anio,
		c.trimestre,
        c.mes,
        p.IdProducto,
        p.Producto,
        t.TipoProducto;
		
CREATE OR REPLACE VIEW v_gasto_mes_sucursal AS
SELECT 	c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        t.Tipo_Gasto,
        l.Localidad,
        p.Provincia,
        SUM(g.Monto)		AS gasto,
        COUNT(g.IdGasto)	AS gasto_volumen
FROM gasto g JOIN sucursal s
    	ON (g.IdSucursal = s.IdSucursal)
    JOIN localidad l
    	ON (s.IdLocalidad = l.IdLocalidad)
    JOIN provincia p
    	ON (l.IdProvincia = p.IdProvincia)
    JOIN tipo_gasto t
    	ON (g.IdTipoGasto = t.IdTipoGasto)
    JOIN calendario c
    	ON (g.Fecha = c.fecha)
GROUP BY c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        t.Tipo_Gasto,
        l.Localidad,
        p.Provincia;
		
CREATE OR REPLACE VIEW v_compra_mes_producto AS
SELECT 	c.anio,
		c.trimestre,
        c.mes,
        p.IdProducto,
        p.Producto,
        t.TipoProducto,
        SUM(co.Precio * co.Cantidad)	AS compra,
        SUM(co.Cantidad)				AS compra_cantidad,
        COUNT(co.IdCompra)				AS compra_volumen
FROM compra co JOIN producto p
		ON (co.IdProducto = p.IdProducto)
    JOIN tipo_producto t
    	ON (p.IdTipoProducto = t.IdTipoProducto)
    JOIN calendario c
    	ON (co.Fecha = c.fecha)
GROUP BY c.anio,
		c.trimestre,
        c.mes,
        p.IdProducto,
        p.Producto,
        t.TipoProducto;