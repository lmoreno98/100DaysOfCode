materias = ["Matematicas","Fisica","Quimica","Historia","Lengua"]
notas = []
for materia in materias:
    notas.append(int(input(f"Ingrese la nota de {materia}: ")))

for i in range(len(materias)):
    if notas[i] >= 6:
        materias.pop(i)
print(f"las materias que se lleva son: {materias}")
