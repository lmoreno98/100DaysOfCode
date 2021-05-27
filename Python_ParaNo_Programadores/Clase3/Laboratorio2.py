
print("Programa para la creacion de matrices")
filas = int(input("Ingrese el numero de filas: "))
columnas = int(input("Ingrese el numero de columnas: "))

matriz = []
aux = []
for fila in range(0,filas):
    for columna in range(0,columnas):
        valor = int(input(f"Ingrese el numero para la matriz[{fila}][{columna}]: "))
        aux.append(valor)
    matriz.append(aux)
    aux = []

print(f"la matriz ingresada es:\n{matriz}")
