frutas = {"Banana":1.35 ,"Manzana":0.80 ,"Pera": 0.85 ,"Naranja": 0.70}

fruta = input("Ingrese la fruta que desea comprar: ").capitalize()
kilos = float(input("Ingrese los kilos que desea comprar: "))

if fruta in frutas.keys():
    precio = frutas[fruta] * kilos
    print(f"El pago por {kilos}kg de {fruta} a {frutas[fruta]}$ es {precio}")

else:
    print("La fruta ingresada es incorrecta")
