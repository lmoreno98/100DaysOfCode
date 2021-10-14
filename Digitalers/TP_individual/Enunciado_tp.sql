Trabajo practico Individual:

Leer en un Notebook el archivo VENTAS_TOTALES.csv (delimitador de campos es punto y coma)
Hacer lo siguiente:
1.Normalizar los campos descriptivos.
2.Los registros con algun campo NAN debe ser borrados.
3.El campo Importe Ventas esta mal calculado, se pide
	recalcularlo haciendo: cantidadunidades x precioventa
4.Borrar la columna Fecha Ventas.
5.Generar el arhivo PRODUCTOS_<su nombreyapellido>.CSV con: 
	codigo de producto,nombre y total de ventas (group by)
	(agrupa por codigo de producto y nombre con suma de campo <importe ventas> para todas las ventas del producto)
6.Generar el archivo VENTAS_<su nombreyapellido>.CSV: con los campos.
	SEGMENTO	
	TIPO VENTA	
	PRODUCTO	
	CANTIDAD UNIDADES	
	PRECIO VENTA	
	IMPORTE VENTAS	
	DIA VENTA	
	MES VENTA	
	ANIO VENTA

Crear variable df_ventas_totales y resolver puntos 1 a 4.
Crear variable df_productos para resolver punto 5.
Crear variable df_ventas   para resolver punto 6.

Los nombre de archivos seran algo asi:
PRODUCTOS_juanperez.CSV
VENTAS_juanperez.CSV

El archivo NOTEBOOK llevara su nombreyapellido unicamente. (debe tener celdas MARKDOWN para explicar que hace en cada paso)

POWER BI:
Importar el archivo PRODUCTOS_<su nombreyapellido>.CSV.
Importar el archivo VENTAS_<su nombreyapellido>.CSV.

Construir el modelo de datos con las 2 tablas y hacer la relacion entre ellas.
Crear Grafico de tortas por segmento de venta y Importe total.
Crear Grafico de embudo que muestre el ranking de productos mas vendidos(en cantidades).
Crear 2 Tarjetas: con Importes de ventas y otra con Total de Unidades vendidas.
Los graficos y tarjetas deben tener Titulo y borde. 
Debentener letra de tamaño 13.
Poner filtro por Segmento y por Año.

El archivo POWER BI grabarlo como GESTIONVENTAS_<su nombre y apellido>


