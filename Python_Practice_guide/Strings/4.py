telefono = input("Ingrese el numero de telefono (prefijo-numero-extencion): ")

telefono = telefono.split(sep="-")

print("prefijo: " + telefono[0])
print("telefono: " + telefono[1])
print("extencion: " + telefono[2])
