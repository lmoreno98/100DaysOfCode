def calc_iva(value, iva = 21):
    return value + value*iva/100

print(calc_iva(1000,10))
print(calc_iva(2000))
