numeros = []

for i in range(10):
    numeros.append(int(input("Ingrese un numero: ")))
numeros.reverse()

for numero in numeros:
    print(numero,end=",")
