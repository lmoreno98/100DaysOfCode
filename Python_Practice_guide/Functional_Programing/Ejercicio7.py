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
    materias = map(str.upper, lista.keys())
    notas = map(calificaciones, lista.values())
    return dict(zip(materias,notas))

print(change_notas({'Matemáticas':6.5, 'Física':5, 'Química':3.4, 'Economía':8.2, 'Historia':9.7, 'Programación':10}))
