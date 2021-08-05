matriz = [[3.3, 6.1, 4.0], [4.9, 5.7, 6.4]]

fila = int(input("Ingrese el numero de fila: "))
columna = int(input("Ingrese el numero de columna: "))
print(matriz)

if (fila == 0 or fila == 1) and (columna >= 0 and columna <=2):
    print(matriz[fila][columna])
else:
    print("El valor ingresado no es correcto")
