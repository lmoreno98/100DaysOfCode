SELECT ReorderPoint, ProductID, Name, productNumber,
      'nacionales' AS origen_producto,
	  10*20 AS calculo
  FROM Production.Product
 ORDER BY ReorderPoint, Name

