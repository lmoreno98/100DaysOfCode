from math import sin,cos,tan,exp,log

def func(choice, rango):
    for i in range(1, rango + 1):
        print(f"{i}     {choice(i)}")




def calculadora():
    calculos = {1:sin, 2:cos, 3:tan, 4:exp, 5:log}
    selection = int(input("""Ingrese:
    1. Para Seno
    2. Para Coseno
    3. Para Tangente
    4. Para Exponencial
    5. Para Logaritmo neperiano
    _ """))
    if selection >= 1 and selection <= 5:
        rango = int(input("Ingrese un numero entero: "))
        func(calculos[selection], rango)
    else:
        print("El valor ingresado es incorrecto")
calculadora()
