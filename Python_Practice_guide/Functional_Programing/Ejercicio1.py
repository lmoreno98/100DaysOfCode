def desc(diccionary):
    aux = 0
    for list in diccionary.keys():
        aux = aux + (list - list * diccionary[list]/100)
    return aux

def iva(diccionary):
    aux = 0
    for list in diccionary.keys():
        aux = aux + (list + list * diccionary[list]/100)
    return aux

def calculo(diccionary, function):
    return function(diccionary)


print('El precio de la compra tras aplicar los descuentos es: ', calculo({1000:20, 500:10, 100:1}, desc))
print('El precio de la compra tras aplicar El iva es: ', calculo({1000:20, 500:10, 100:1}, iva))
