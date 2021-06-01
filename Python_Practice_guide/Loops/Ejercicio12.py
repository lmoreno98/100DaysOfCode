user_palabra = input("Ingrese la palabra: ").lower()
user_letra = input("Ingrese la letra: ").lower()
verif = 0
for letra in user_palabra:
    if letra == user_letra:
        verif += 1
print(f"La letra {user_letra} se repite {verif}")
