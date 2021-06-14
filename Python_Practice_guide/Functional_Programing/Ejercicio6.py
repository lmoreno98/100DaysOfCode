def calificaciones(nota):
    if nota < 5:
        return 'SS'
    elif nota < 7:
        return 'AP'
    elif nota < 9:
        return 'NT'
    elif nota < 10:
        return 'SB'
    else:
        return 'MH'

def change_notas(lista):
    lista_final = list(map(calificaciones, lista))
    return lista_final

print(change_notas([6.5, 5, 3.4, 8.2, 2.1, 9.7,10]))
