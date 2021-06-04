divisa = {'Euro':'€', 'Dollar':'$', 'Yen':'¥'}
user_divisa = input("Ingrese el nombre de la divisa: ").capitalize()

if user_divisa not in divisa.keys():
    print(f"La divisa {user_divisa} se encuentra en la lista")
else:
    print(f"El simbolo de {user_divisa} es: {divisa[user_divisa]}")
