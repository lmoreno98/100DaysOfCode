inversion = int(input("Ingrese su inversion: "))
interes_anual = float(input("Ingrese el interes anual: "))
cant_años = int(input("Ingrese la cantidad de años a invertir: "))

aux = inversion
for año in range(cant_años):
    aux = aux * (1 +interes_anual/100)
    print(f"Capital tras {año} años: {round(aux,2)}")
