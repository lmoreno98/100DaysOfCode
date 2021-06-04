cursos = {'Matemáticas': 6, 'Física': 4, 'Química': 5}

creditos = 0
for curso in cursos.keys():
    print(f"{curso} tiene {cursos[curso]} créditos")
    creditos += cursos[curso]
print(f"{creditos} creditos")
