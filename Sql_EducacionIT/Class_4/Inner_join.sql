USE laboratorio;

SELECT f.Fecha, c.nombre, c.apellido, a.nombre AS articulo ,ROUND(precio,3) AS precio
FROM facturas AS f
INNER JOIN clientes AS c
ON f.ClienteID  = c.ClienteID
INNER JOIN articulos AS a
ON f.ArticuloID = a.ArticuloID;