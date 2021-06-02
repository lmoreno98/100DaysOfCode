palabra = input("Ingrese una palabra: ").lower()
a, e, i, o, u = 0,0,0,0,0
for letra in palabra:
    if letra == "a":
        a +=1
    elif letra == "e":
        e +=1
    elif  letra == "i":
        i +=1
    elif letra == "o":
        o +=1
    elif  letra == "u":
        u +=1

print(f"A = {a} \nE = {e} \nI = {i} \nO = {o} \nU = {u}")
