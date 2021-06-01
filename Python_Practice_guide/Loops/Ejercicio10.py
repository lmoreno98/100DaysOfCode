numero = int(input("Ingrese un numero para saber si es primo mayor a 2: "))
for i in range(2,numero):
    if numero%i == 0:
        break

if (i+1) == numero:
    print(f"{numero} es primo")
else:
    print(f"{numero} no es primo")
