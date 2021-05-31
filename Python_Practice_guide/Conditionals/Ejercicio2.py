save_pass = '123abc'

user_pass = input("Ingrese su contraseña: ")

if user_pass.lower() == save_pass.lower():
    print("La contraseña es correcta")
else:
    print("Su contraseña es incorrecta")
