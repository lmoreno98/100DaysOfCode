import math
value1 = int(input("Ingrese X^2: "))

value2 = int(input("Ingrese X^1: "))

value3 = int(input("Ingrese X^0: "))

raiz1 = (-value2 - math.sqrt((value2*value2)- (4*value3*value1) ))/(2*value1)
raiz2 = (-value2 + math.sqrt((value2*value2)- (4*value3*value1) ))/(2*value1)

print(f"raiz1 = {raiz1}")
print(f"raiz2 = {raiz2}")
