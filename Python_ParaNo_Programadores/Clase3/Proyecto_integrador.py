verif = True

matriz_alumnos = []
matriz_aux = []
while verif:
    print("Ingrese el número de la operación que desea ejecutar:")
    print("1 - Ver la lista de alumnos.")
    print("2 - Añadir un alumno a la lista.")
    print("3 - Salir.")
    try:
        selection = int(input(""))
    except ValueError:
        selection = 4

    if selection == 1:
        for alumnos in matriz_alumnos:
            print(f"{alumnos[0].title()} - {alumnos[1]} cursos")

    elif selection == 2:
        matriz_aux = []
        alumno = input("Ingrese el nombre del alumno: ")
        curso = input("Ingrese la cantidad de cursos: ")
        if alumno == "" or curso == "":
            print("Error el nombre o curso invalido")
        else:
            matriz_aux.append(alumno)
            matriz_aux.append(curso)
            matriz_alumnos.append(matriz_aux)


    elif selection == 3:
        print("¡Gracias por utilizar el programa!")
        verif = False
    else:
        print("La opción ingresada no es correcta, vuelva a intentarlo.")
