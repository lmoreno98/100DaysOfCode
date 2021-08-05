USE laboratorio;
-- 1.Obtener el monto máximo de factura.
SELECT MAX(monto) AS monto_maxino
FROM facturas;

-- 2.Obtener el monto mínimo de factura.
SELECT MIN(monto) AS monto_minimo
FROM facturas;

-- 3.Obtener el monto mínimo de factura entre los años 2011 y 2020.
SELECT MIN(monto) AS monto_minimo
FROM facturas
WHERE YEAR(fecha) BETWEEN 2011 AND 2020;

-- 4.Obtener el monto promedio de factura.
SELECT AVG(monto) AS monto_promedio
FROM facturas;

-- 5.Obtener la factura con el monto promedio del año 2011.
SELECT AVG(monto) AS monto_minimo
FROM facturas
WHERE YEAR(fecha) = 2011;

-- 6.Obtener la cantidad de facturas.
SELECT COUNT(*) AS Cantidad_facturas
FROM facturas;

-- 7.Obtener la cantidad de facturas que tienen un monto entre $500 y $3.300.
SELECT COUNT(*) AS Cantidad_facturas
FROM facturas
WHERE monto BETWEEN 500 AND 33000;

-- 8.Obtener la cantidad de facturas que hay en cada año.
SELECT YEAR(fecha) AS Año, COUNT(*) AS Cantidad_facturas
FROM facturas
GROUP BY YEAR(fecha);

-- 9.Obtener la cantidad de facturas y el monto promedio en cada año.
SELECT YEAR(fecha) AS Año, COUNT(*) AS Cantidad_facturas, ROUND(AVG(monto),3) AS promedio
FROM facturas
GROUP BY YEAR(fecha);

-- 10.Obtener la suma del monto y el promedio de las facturas según la letra.
SELECT letra, SUM(monto) AS Cantidad_facturas, ROUND(AVG(monto),3) AS promedio
FROM facturas
GROUP BY letra;