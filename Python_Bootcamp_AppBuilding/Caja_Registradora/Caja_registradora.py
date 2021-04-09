# Programado por Luciano Moreno
caja_andando = True
caja_calculando = True
otro_ingreso = 'SI'


class Caja:

    def __init__(self):
        self.precio = []
        self.codigo_barras = []
        self.producto = []

    def carga_producto(self, producto):

        self.producto.append(producto)

    def carga_codigo(self, codigo):

        self.codigo_barras.append(codigo)

    def carga_precio(self, precio):

        self.precio.append(precio)

    def verificar_codigo_ingresado(self, codigo):
        index = 0
        while codigo != self.codigo_barras[index]:
            index += 1
            caja.largo()
            if index == caja.largo() :
                caja.largo()
                return 1
        return -1

    def imprimo_todo(self, largo):
        print(f'{self.producto[largo]}     {self.codigo_barras[largo]}    ${self.precio[largo]}')

    def largo(self):

        return len(self.producto)

    def busco_precio_producto(self, codigo):
        index = 0
        while codigo != self.codigo_barras[index]:
            index += 1
            if index == caja.largo() and codigo != self.codigo_barras:
                return -1
        return self.precio[index]

    def multiplicacion(self, precio, cantidad):
        return precio * cantidad

    def calculo_de_promociones(self, total, promocion):
        precio_promocion = total - ((total * promocion)/100)
        return precio_promocion

    def ubicacion_precio(self, codigo):
        posicion = -1
        try:
            posicion = self.codigo_barras.index(codigo)
        except ValueError:
            print("El valor ingresado no se encuentra en la lista")
        if posicion == -1:
            return -1
        else:
            return posicion

    def update(self, codigo, precio):
        ubicacion = caja.ubicacion_precio(codigo)
        self.precio.insert(ubicacion, precio)


caja = Caja()
caja.carga_producto('Yogurt')
caja.carga_codigo("1478")
caja.carga_precio(45.8)
caja.carga_producto('Galletitas')
caja.carga_codigo("1234")
caja.carga_precio(52.5)
caja.carga_producto('Huevos')
caja.carga_codigo("1236")
caja.carga_precio(10)
caja.carga_producto('Leche')
caja.carga_codigo("1598")
caja.carga_precio(90)
while caja_andando:
    try:
        opcion = int(input(f'Ingrese:\n'
              f'1 para ver la caja de productos disponibles\n'
              f'2 para cargar nuevo producto\n'
              f'3 para empezar a comprar\n'
              f'4 para actualizar precios\n'
              f'5 para salir de la caja: '))
    except ValueError:
        print("El valor ingresado es incorrecto")

    # --------------------------------------Muestro la caja de productos y codigos ---------------------------
    if opcion == 1:
        print("Producto   Codigo   Precio")
        for i in range(caja.largo()):
            caja.imprimo_todo(i)

    # --------------------------------------Ingreso valores en la caja-----------------------------------
    elif opcion == 2:
        precio = 0
        codigo = str(input("Ingrese el codigo del producto: "))
        if caja.verificar_codigo_ingresado(codigo) == 1:
            producto = input("Ingrese el nombre del producto: ")
            try:
                precio = float(input("Ingrese el precio del producto de no ingresar precio por defecto queda en 0: "))
            except ValueError:
                print("El valor ingresado es incorrecto")
            caja.carga_producto(producto)
            caja.carga_codigo(codigo)
            caja.carga_precio(precio)
        elif caja.verificar_codigo_ingresado(codigo) == -1:
            print("El codigo ingresado no esta disponible")

    # ---------------------------------Calculos en la caja --------------------------------------------------
    elif opcion == 3:
        total = 0
        while caja_calculando:
            if otro_ingreso.upper() == 'SI' or otro_ingreso.upper() == 'S':
                codigo = str(input("Ingrese el codigo del producto: "))
                try:
                    cantidad = int(input("Ingrese la cantidad del producto: "))
                except ValueError:
                    print("La cantidad ingresada es incorrecta vuelva a intentarlo")
                precio = caja.busco_precio_producto(codigo)
                if precio == -1:
                    print("El codigo ingresado no se encuentra")
                else:
                    total = total + caja.multiplicacion(precio, cantidad)
                otro_ingreso = input("Desea agregar otro producto al carrito(si no): ")
            elif otro_ingreso.upper() == 'NO' or otro_ingreso.upper() == 'N':
                print(f'El importe parcial es de:  {total}')
                otro_ingreso = input("Decea ingresar algo mas (si o no)")
                if otro_ingreso.upper() == 'SI' or otro_ingreso.upper() == 'S':
                    pass
                elif otro_ingreso.upper() == 'NO' or otro_ingreso.upper() == 'N':
                    caja_calculando = False
                else:
                    print("Valor ingresado incorrecto ingrese si o no")
                    otro_ingreso == 'NO'
            else:
                print("Valor ingresado incorrecto ingrese si o no")
                otro_ingreso = input("Decea ingresar algo mas (si o no)")
        try:
            promocion = int(input("Ingrese el porcentage de la promocion(0,100) con el 0 cuando no tenes promocion: "))
        except ValueError:
            print("La promocion ingresada es incorrecta ")
        precio_final = caja.calculo_de_promociones(total, promocion)
        print(precio_final)

    # ----------------------------------------Actualizacion de precios---------------------------------
    elif opcion == 4:
        codigo = str(input("Ingrese el codigo del producto que desea actualizar: "))
        try:
            precio = float(input("Ingrese valor nuevo del prducto : "))
        except ValueError:
            print("La cantidad ingresada es incorrecta vuelva a intentarlo")
        if caja.ubicacion_precio(codigo) != -1:
            caja.update(codigo, precio)
        else:
            pass

    # ----------------------------------------Caja Cerrada --------------------------------------------
    elif opcion == 5:
        caja_andando = False
    else:
        print("El valor ingresado es incorrecto")
    print("")
    opcion = 0
print("Esta caja esta cerrada")


