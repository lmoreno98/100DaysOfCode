puntuacion = float(input("Ingrese la puntuacion final: "))
dinero = 2400

if puntuacion == 0.0:
    print(f"Su nivel fue inaceptable\nLa cantidad de dinero que recibira es de: {dinero*puntuacion}$")
elif puntuacion == 0.4:
    print(f"Su nivel fue aceptable\nLa cantidad de dinero que recibira es de: {dinero*puntuacion}$")
elif puntuacion == 0.6:
    print(f"Su nivel fue meritorio\nLa cantidad de dinero que recibira es de: {dinero*puntuacion}$")
else:
    print("La puntuacion ingresada es incorrecta")
