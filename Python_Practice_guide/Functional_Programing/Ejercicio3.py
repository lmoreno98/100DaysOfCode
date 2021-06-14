def lista_div2(list):
    aux = []
    for num in list:
        aux.append(num/2)
    return aux


def calculo(lista, func):

    print(f"Lista original {lista}")
    print(f"Lista modificada {func(lista)}")


calculo([1,2,3,4,5,6,7,8,9,10], lista_div2)
