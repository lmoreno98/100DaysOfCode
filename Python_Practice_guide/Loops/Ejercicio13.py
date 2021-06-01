print("Ingrese palabras para hacer eco (Escriba salir para terminar)")
while True:
    palabra = input("")
    if palabra.lower() == "salir":
        break
    else:
        print(palabra)
