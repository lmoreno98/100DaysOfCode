def factorial(num):
    fact = 1
    for i in range(1,num+1):
        fact *= i
    return fact

number = int(input("Ingrese un nuemro: "))
print(f"El factorial de {number} = {factorial(number)}")
