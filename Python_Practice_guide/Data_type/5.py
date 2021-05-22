print("Calculadora de inversion")

inversion = float(input("Ingrese el monto a invertir: "))
interes_anual = float(input("Ingrese el interes anual de la inversion: "))
cantidad_años = float(input("Ingrese la cantidad de años a invertir: "))


monto_final = inversion*(interes_anual/100+ 1) **cantidad_años

print(f"La cantidad final es de: {round(monto_final,2)}")
