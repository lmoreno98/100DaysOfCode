opcion = int(input("Ingrese: \n1. Para pizza vegetariana \n2. Para pizza no vegetariana: "))
vegetarina = ["Pimientos", "Tofu"]
no_vegetariana = ["Peperoni", "Jamón" , "Salmón"]
if opcion == 1:
    ingrediente = int(input("Seleccione 1 ingrediente: \n1. Pimientos \n2. Para Tofu:  "))
    if ingrediente == 1:
        print(f"La pizza vegetariana con ingredientes Mozzarella, Tomate y {vegetarina[0]}")
    elif ingrediente == 2:
        print(f"La pizza vegetariana con ingredientes Mozzarella, Tomate y {vegetarina[1]}")
    else:
        print("La opcion ingresada es incorrecta")
elif opcion == 2:
    ingrediente = int(input("Seleccione 1 ingrediente: \n1. Peperoni \n2. Jamón \n3. Salmón: "))
    if ingrediente == 1:
        print(f"La pizza vegetariana con ingredientes Mozzarella, Tomate y {no_vegetariana[0]}")
    elif ingrediente == 2:
        print(f"La pizza vegetariana con ingredientes Mozzarella, Tomate y {no_vegetariana[1]}")
    elif  ingrediente == 3:
        print(f"La pizza vegetariana con ingredientes Mozzarella, Tomate y {no_vegetariana[2]}")
    else:
        print("La opcion ingresada es incorrecta")
else:
    print("La opcion es incorrecta")
