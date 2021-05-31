peso_muñeca = 0.075
peso_payaso = 0.112

cant_muñecas = int(input("Ingrese la cantidad de muñecas vendidas: "))
cant_payasos = int(input("Ingrese la cantidad de payasos vendidos: "))

peso_final = (cant_muñecas*peso_muñeca) + (peso_payaso*cant_payasos)

print(f"El peso final de el paquete va a ser de {peso_final}kg")
