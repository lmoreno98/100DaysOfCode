nombre = input("Ingrese su nombre: ")
edad = input("Ingrese su edad: ")
direccion = input("Ingrese su direccion: ")
telefono = input("Ingrese su telefono: ")

user = {'nombre': nombre, 'edad': edad, 'direccion': direccion, 'telefono': telefono}

print(f"{user['nombre']} tiene {user['edad']} años, vive en {user['direccion']} y su número de teléfono es {user['telefono']}.")
