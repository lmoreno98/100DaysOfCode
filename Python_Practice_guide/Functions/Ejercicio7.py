def square(list):
    list_aux = []
    for num in list:
        num = num **2
        list_aux.append(num)
    return list_aux

lista = [1,2,3,4,5]
print(square(lista))
