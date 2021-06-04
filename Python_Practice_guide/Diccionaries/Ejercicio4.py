mes ={"01":"Enero","02":"Febrero","03":"Marzo","04":"Abril","05":"Mayo","06":"Junio","07":"Julio","08":"Agosto","09":"Septiembre","10":"Octubre","11":"Noviembre","12":"Diciembre"}

fecha = input("Ingrese la fecha en formato (dd/mm/aaaa):")
fecha = fecha.split(sep="/")

print(f"{fecha[0]} de {mes[fecha[1]]} de {fecha[2]}")
