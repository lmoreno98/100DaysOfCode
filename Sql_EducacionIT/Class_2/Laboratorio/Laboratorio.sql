USE laboratorio;

SELECT *
FROM articulos;

-- a.artículos con precio mayor a 100
SELECT * 
FROM articulos
WHERE precio > 100;

-- b.artículos con precio entre 20 y 40 (usar < y >)
SELECT * 
FROM articulos
WHERE precio > 20 AND precio < 40;

-- c.artículos con precio entre 40 y 60 (usar BETWEEN)
SELECT * 
FROM articulos
WHERE precio BETWEEN 40 AND 60;

-- d.artículos con precio = 20 y stock mayor a 30 
SELECT * 
FROM articulos
WHERE precio = 20 AND stock > 30;

-- e.artículos con precio (12,20,30) no usar IN
SELECT * 
FROM articulos
WHERE precio = 20 OR precio = 12 OR precio = 30;

-- f.artículos con precio (12,20,30) usar el IN
SELECT * 
FROM articulos
WHERE precio IN(12,30,20);

-- g.artículos cuyo precio no sea (12,20,30)
SELECT * 
FROM articulos
WHERE precio NOT IN(12,30,20);

-- Listar los artículos ordenados por precio de mayor a menor
SELECT * 
FROM articulos
ORDER BY precio DESC, NOMBRE ASC;

-- Listar todos los artículos incluyendo una columna denominada precio con IVA
-- la cual deberá tener el monto con el iva del producto.
SELECT *, precio*1.21 AS IVA 
FROM articulos;

-- Listar dos nuevas columnas
SELECT *, 3 AS "CAntidad de cuotas", (precio/3)*1.05 as "Valor de couta"
FROM articulos;
