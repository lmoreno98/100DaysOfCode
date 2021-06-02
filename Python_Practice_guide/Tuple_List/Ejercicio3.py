materias = ["Matematicas","Fisica","Quimica","Historia","Lengua"]
notas = []
for materia in materias:
    notas.append(int(input(f"Ingrese la nota de {materia}: ")))

for (materia, nota) in zip(materias, notas):
    print(f"En {materia} sacaste {nota}")
