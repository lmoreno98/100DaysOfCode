user = {}
option = "Yes"
while True:
    if option == "Yes":
        informacion = input("Ingrese que informacion desea ingresar: ").capitalize()
        valor = input("Ingrese el valor: ")
        user[informacion] = valor
        print(user)
    else:
        break
    option = input("Desea continuar ingresando informacion ('Yes/No'): ").capitalize()
print(f"La inforacion ingresada es: {user}")
