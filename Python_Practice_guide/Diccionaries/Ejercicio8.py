diccionario = {}
user_diccionario = input("Ingrese la palabra y su traduccion separado por comas en el formato (palabra:traduccion): ")
for lista in user_diccionario.split(','):
    clave, valor = lista.split(':')
    diccionario[clave] = valor

user_palabra = input("Ingrese la palabra a traducir: ")
for palabra in user_palabra.split(' '):
    if palabra in diccionario.keys():
        print(diccionario[palabra],end = " ")
    else:
        print(palabra,end = " ")
