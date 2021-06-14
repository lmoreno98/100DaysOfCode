def par(lista):
    aux = []
    for num in lista:
        if num %2 == 0:
            aux.append(True)
        else:
            aux.append(False)
    return aux

def verificador(lista, func):
    lista_final = []
    bool = func(lista)
    for i in range(len(lista)):
        if bool[i]:
            lista_final.append(lista[i])
    print(lista_final)


print(verificador([1,2,3,4,5,6,7,8,9,10], par))
