palabra = input("Ingrese una palabra: ")

palindromo = palabra[::-1]
validador = 0

for letra1,letra2 in zip(palabra,palindromo):
    if letra1 != letra2:
        validador = 1
        break
if validador == 0:
    print("La palabra es un palindromo")
else:
    print("La palabra no es un palindromo")
