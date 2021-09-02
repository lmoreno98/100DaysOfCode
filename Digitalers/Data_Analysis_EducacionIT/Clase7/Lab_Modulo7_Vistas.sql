CREATE OR REPLACE VIEW v_venta_mes_producto AS
SELECT 	c.anio,
		c.trimestre,
        c.mes,
        p.Producto,
        t.TipoProducto,
        lo.Latitud,
        lo.Longitud,
        lo.Localidad,
        pr.Provincia,
        SUM(v.Precio * v.Cantidad)	AS venta,
        SUM(v.Cantidad)				AS venta_cantidad,
        COUNT(v.IdVenta)			AS venta_volumen
FROM venta v JOIN producto p
		ON (v.IdProducto = p.IdProducto)
    JOIN tipo_producto t
    	ON (p.IdTipoProducto = t.IdTipoProducto)
    JOIN cliente cl
    	ON (v.IdCliente = cl.IdCliente)
    JOIN Localidad lo
    	ON (cl.IdLocalidad = lo.IdLocalidad)
    JOIN provincia pr
    	ON (lo.IdProvincia = pr.IdProvincia)
    JOIN calendario c
    	ON (v.Fecha = c.fecha)
WHERE v.IdVenta NOT IN (SELECT IdVenta FROM aux_venta WHERE Motivo IN (1,2,3))
GROUP BY c.anio,
		c.trimestre,
        c.mes,
        p.Producto,
        t.TipoProducto,
        lo.Latitud,
        lo.Longitud,
        lo.Localidad,
        pr.Provincia;
		
CREATE OR REPLACE VIEW v_venta_mes_sucursal AS
SELECT c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        s.Latitud,
        s.Longitud,
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
WHERE v.IdVenta NOT IN (SELECT IdVenta FROM aux_venta WHERE Motivo IN (1,2,3))
GROUP BY c.anio,
		c.mes,
        s.IdSucursal,
        s.Sucursal,
        s.Latitud,
        s.Longitud,
        l.Localidad,
        p.Provincia;
		
CREATE OR REPLACE VIEW v_venta_mes_cliente AS
SELECT 	c.anio,
		c.mes,
        cl.Nombre_y_Apellido,
        cl.Domicilio,
        cl.Latitud,
        cl.Longitud,
        l.Localidad,
        p.Provincia,
        SUM(v.Precio * v.Cantidad)	AS venta,
        SUM(v.Cantidad)				AS venta_cantidad,
        COUNT(v.IdVenta)			AS venta_volumen
FROM venta v JOIN cliente cl
    	ON (v.IdCliente = cl.IdCliente)
    JOIN localidad l
    	ON (cl.IdLocalidad = l.IdLocalidad)
    JOIN provincia p
    	ON (l.IdProvincia = p.IdProvincia)
    JOIN calendario c
    	ON (v.Fecha = c.fecha)
WHERE v.IdVenta NOT IN (SELECT IdVenta FROM aux_venta WHERE Motivo IN (1,2,3))
GROUP BY c.anio,
		c.mes,
        cl.Nombre_y_Apellido,
        cl.Domicilio,
        cl.Latitud,
        cl.Longitud,
        l.Localidad,
        p.Provincia;
		
CREATE OR REPLACE VIEW v_estructura_base AS
SELECT * FROM information_schema.table_constraints
WHERE table_schema    = DATABASE();

/*Vistas para modelo Estrella*/
CREATE OR REPLACE VIEW v_modelo_fact_inicial AS SELECT * FROM fact_inicial;

CREATE OR REPLACE VIEW v_modelo_fact_venta AS 
SELECT 	v.IdProducto * 10000000000 + v.IdSucursal * 100000000 + c.IdFecha IdProductoSucursalFecha,
		v.Fecha_Entrega,
        DATEDIFF(v.Fecha_Entrega, v.Fecha) AS Dias_Entrega,
        v.IdCanal,
        v.IdCliente,
        v.IdEmpleado,
        v.Precio,
        v.Cantidad
FROM venta v JOIN calendario c
	ON (c.fecha = v.Fecha)
WHERE v.IdVenta NOT IN (SELECT IdVenta FROM aux_venta WHERE Motivo IN (1,2,3));
	
CREATE OR REPLACE VIEW v_modelo_fact_gasto AS 
SELECT 	g.IdSucursal * 100000000 + c.IdFecha IdSucursalFecha,
		g.IdTipoGasto,
        g.Monto
FROM gasto g JOIN calendario c
	ON (c.fecha = g.Fecha);

CREATE OR REPLACE VIEW v_modelo_fact_compra AS 
SELECT  co.IdProducto * 100000000 + c.IdFecha AS  IdProductoFecha,
		co.IdProveedor,
        co.Precio,
        co.Cantidad
FROM compra co JOIN calendario c
	ON (c.fecha = co.Fecha);
	
CREATE OR REPLACE VIEW v_modelo_dim_calendario AS
SELECT 	c.IdFecha,
		c.Fecha,
        c.dia_nombre,
        c.semana,
        c.mes,
        c.mes_nombre,
        c.trimestre,
        c.anio
FROM calendario c;

CREATE OR REPLACE VIEW v_modelo_dim_cliente AS
SELECT 	c.IdCliente,
		c.Nombre_y_Apellido,
        c.Domicilio,
        c.Latitud,
        c.Longitud,
        c.Edad,
        c.Rango_Etario
FROM cliente c;

CREATE OR REPLACE VIEW v_modelo_dim_producto AS
SELECT 	p.IdProducto,
		p.Producto,
        p.IdTipoProducto,
        p.Precio
FROM producto p;

CREATE OR REPLACE VIEW v_modelo_dim_tipo_producto AS
SELECT 	tp.IdTipoProducto,
		tp.TipoProducto
FROM tipo_producto tp;

CREATE OR REPLACE VIEW v_modelo_dim_sucursal AS
SELECT 	s.IdSucursal,
		s.Sucursal,
        s.Domicilio,
        s.Latitud,
        s.Longitud
FROM sucursal s;

CREATE OR REPLACE VIEW v_modelo_dim_proveedor AS
SELECT  p.IdProveedor,
		p.Nombre as Proveedor
FROM proveedor p;

CREATE OR REPLACE VIEW v_modelo_dim_canal_venta AS
SELECT  c.IdCanal,
		c.Canal
FROM canal_venta c;

CREATE OR REPLACE VIEW v_modelo_dim_tipo_gasto AS
SELECT  t.IdTipoGasto,
		t.Tipo_Gasto
FROM tipo_gasto t;

CREATE OR REPLACE VIEW v_modelo_dim_empleado AS
SELECT  e.IdEmpleado,
		e.CodigoEmpleado,
        e.Apellido,
        e.Nombre,
        e.Salario,
        e.IdSector,
        e.IdCargo
FROM empleado e;

CREATE OR REPLACE VIEW v_modelo_dim_cargo AS
SELECT  c.IdCargo,
		c.Cargo
FROM cargo c;

CREATE OR REPLACE VIEW v_modelo_dim_sector AS
SELECT  s.IdSector,
		s.Sector
FROM sector s;
	
	
