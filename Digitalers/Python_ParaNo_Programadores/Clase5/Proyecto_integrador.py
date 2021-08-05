import tkinter as tk

def llenar_dicc():
    alumno = alumno_entry.get().capitalize()
    curso = curso_entry.get()
    if alumno == "" or curso == "":
        print("Error el nombre o curso invalido")
    else:
        dicc_alumnos[alumno] = curso
        print("Alumno agregado satisfactoriamente")

def leer_dicc():
    print("Lista de alumnos:")
    for alumno in dicc_alumnos.keys():
        print(f"{alumno.capitalize()} - {dicc_alumnos[alumno]} cursos")

def ver_curso_alumno():
    nombre = alumno_entry.get().capitalize()
    if nombre in dicc_alumnos.keys():
        print(f"El alumno {nombre.capitalize()} tiene {dicc_alumnos[nombre]} cursos")
    else:
        print("El alumno no pertenece a ningun curso")

dicc_alumnos = {}
win = tk.Tk()
win.title("Calculadora")
win.config(width=300, height=250)

button1 = tk.Button(text="Ver lista de alumnos", command=leer_dicc)
button1.place(x = 20, y = 20)
button2 = tk.Button(text = "Agregar a la lista", command = llenar_dicc)
button2.place(x = 20, y = 160 )
button3 = tk.Button(text = "Ver contenido de curso", command = ver_curso_alumno)
button3.place(x = 150, y = 160 )

label1 = tk.Label(text = "Nombre alumno: ")
label1.place(x=10, y=60)
alumno_entry = tk.Entry()
alumno_entry.place(x = 130, y = 60)

label2 = tk.Label(text = "Cursos: ")
label2.place(x=10, y=100)
curso_entry = tk.Entry(width = 10)
curso_entry.place(x = 130, y = 100)

win.mainloop()
