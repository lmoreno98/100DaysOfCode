productos = input("Ingrese productos de compras separados por comas: ")

productos = productos.split(sep= ",")

for producto in productos:
    print(producto)
