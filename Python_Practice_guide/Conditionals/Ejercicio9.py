edad = int(input("Ingrese su edad: "))

if edad >=0 and edad < 4:
    print("Su importe es de 0$")
elif edad >=4 and edad < 18:
    print("Su importe es de 5$")
elif edad >=18 and edad < 110:
    print("Su informe es de 10$")
else:
    print("La edad ingresada es incorrecta")
