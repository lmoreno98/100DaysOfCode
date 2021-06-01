def rango(desde, hasta, intervalo):
    numeros = []
    while desde < hasta:
        numeros.append(desde)
        desde = desde + intervalo
    return numeros


print(rango(1,10,2))
