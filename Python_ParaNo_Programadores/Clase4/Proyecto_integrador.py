def llenar_dicc(nombre, cursos):
    nombre = nombre.capitalize()
    dicc_alumnos[nombre] = cursos

def leer_dicc(dicc):
    for alumno in dicc.keys():
        print(f"{alumno.capitalize()} - {dicc[alumno]} cursos")


verif = True
dicc_alumnos = {}
while verif:
    print("")
    print("Ingrese el número de la operación que desea ejecutar:")
    print("1 - Ver la lista de alumnos.")
    print("2 - Añadir un alumno a la lista.")
    print("3 - Ver la cantidad de cursos de un alumno")
    print("4 - Salir.")
    try:
        selection = int(input(""))
    except ValueError:
        selection = 0

    if selection == 1:
        leer_dicc(dicc_alumnos)

    elif selection == 2:
        alumno = input("Ingrese el nombre del alumno: ")
        curso = input("Ingrese la cantidad de cursos: ")
        if alumno == "" or curso == "":
            print("Error el nombre o curso invalido")
        else:
            llenar_dicc(alumno, curso)

    elif selection == 3:
        nombre = input("Ingrese el nombre del alumno al que desea ver sus cursos: ").capitalize()
        if nombre in dicc_alumnos.keys():
            print(f"El alumno {nombre} tiene {dicc_alumnos[nombre]} cursos")
        else:
            print("El alumno no pertenece a ningun curso")

    elif selection == 4:
        print("¡Gracias por utilizar el programa!")
        verif = False

    else:
        print("La opción ingresada no es correcta, vuelva a intentarlo.")
