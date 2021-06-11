from math import sqrt
def media(list):
    sum = 0
    for num in list:
        sum += num
    median = sum/len(list)
    return median

def varianza(list, media):
    sum = 0
    for num in list:
        sum += (num**2)
    median = sum/len(list) - (media**2)
    return median

def desv_tip(var):
    desv = sqrt(var)
    return(desv)

def calculos(list):
    print(f"""
    Calculations
    list = {list}
    medium = {media(list)}
    Variance = {varianza(list,media(list))}
    Typical deviation = {desv_tip(varianza(list,media(list)))}""")

lista = [1,2,3,4,5]
lista2 = [2.3, 5.7, 6.8, 9.7, 12.1, 15.6]

calculos(lista)
calculos(lista2)
