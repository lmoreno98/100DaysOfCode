peso = float(input("Ingrese su peso en kg: "))
altura = float(input("Ingrese su altura en metros: "))

imc = peso/(altura**2)

print(f"Tu indice de masa corporal es: {round(imc,2)}")
