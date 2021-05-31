nombre = input("Ingrese su nombre: ").upper()
sexo = input("Ingrese su sexo (M/H): ").upper()



if sexo == "M":
    if nombre[0]>= 'A' and nombre[0] <= "M":
        print("Usted esta en el grupo 'A'")
    elif nombre[0] > "M" and nombre[0] <= 'Z':
        print("Usted esta en el grup 'B'")
    else:
        print("Su nombre es incorrecto")
elif sexo == "H":
    if nombre[0]>= 'A' and nombre[0] <= "M":
        print("Usted esta en el grupo 'B'")
    elif nombre[0] > "M" and nombre[0] <= 'Z':
        print("Usted esta en el grup 'A'")
    else:
        print("Su nombre es incorrecto")
else:
    print("El sexo ingresado es incorrecto")
