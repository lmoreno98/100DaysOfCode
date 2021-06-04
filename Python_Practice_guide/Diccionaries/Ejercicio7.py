compra = {}
precio_final = 0
option = "Yes"
while True:
    if option == "Yes":
        articulo = input("Ingrese el nombre del articulo: ")
        precio = int(input("Ingrese el precio del articulo: "))
        compra[articulo] = precio
        precio_final += precio
    else:
        break
    option = input("Desea continuar ingresando informacion ('Yes/No'): ").capitalize()

print("Lista de compras")
for articulo in compra.keys():
    print(f"{articulo} \t{compra[articulo]}")
print(f"Total\t{precio_final}")
