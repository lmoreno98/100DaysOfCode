fecha = input("Ingrese el dia mes y año de nacimiento en formato (dd/mm/aaaa): ")


fecha = fecha.split(sep="/")

print(f"""
Dia {fecha[0]}
Mes {fecha[1]}
Año {fecha[2]}""")
