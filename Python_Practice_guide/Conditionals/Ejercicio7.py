renta = float(input("Ingrese su renta anual: "))

if renta < 10000:
    print("Tipo impositivo del 5%")
elif renta >= 10000 and renta < 20000:
    print("Tipo impositivo del 15%")
elif renta >= 20000 and renta < 35000:
    print("Tipo impositivo del 20%")
elif renta >= 35000 and renta < 60000:
    print("Tipo impositivo del 30%")
elif renta >= 60000:
    print("Tipo impositivo del 45%")
else:
    print("La renta ingresada es invalida")
