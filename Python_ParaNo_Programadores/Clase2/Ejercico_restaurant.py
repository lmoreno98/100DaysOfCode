dia = input("Ingrese el dia: ")
turno = input("Ingrese el turno de la comida (cena o almuerzo): ")

# Validacion de datos ingresados

if dia == "lunes" or dia == "martes" or \
    dia == "viernes" or dia == "jueves" or \
    dia == "sabado" or dia == "domingo":
    dia_correcto = True
else:
    dia_correcto = False

if turno == "almuerzo" or turno == "cena":
    turno_correcto = True
else:
    turno_correcto = False

descuento = 0
if turno_correcto and dia_correcto:
    if dia == "lunes" or dia == "martes":
        if turno == "almuerzo":
            descuento = 15
        else:
            descuento = 20
    elif dia  == "jueves" or dia == "viernes":
        if turno == "almuerzo":
            descuento = 25
        else:
            descuento = 0
    print(f"""----------------------
    Dia {dia}
    Turno {turno}
    Descuento es del {descuento}%
----------------------""")
else:
    print ("El dia o turno fueron incorrectos")
