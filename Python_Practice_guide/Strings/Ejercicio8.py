precio = float(input("Ingrese el valor en euros: "))

centimo = precio - int(precio)

print(f"{int(precio)} euros {int(centimo*100)} centimos")
