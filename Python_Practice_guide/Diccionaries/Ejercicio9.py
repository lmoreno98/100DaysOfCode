facturas_impagas = {}
facturas_pagas = {}

while True:
    pagos = 0
    impagos = 0
    opcion = input("Ingrese:\n1.Para agregar factura impaga\n2.Para pagar factura\n3.Para Salir: ")
    if opcion == "1":
        numero = input("Ingrese el numero de la factura: ")
        if (numero not in facturas_impagas.keys()) and (numero not in facturas_pagas.keys()):
            valor = int(input("Ingrese el valor de la factura: "))
            facturas_impagas[numero] = valor
        else:
            print("La factura ya esta ingresada")
    elif opcion == "2":
        numero = input("Ingrese el numero de factura: ")
        if numero in facturas_impagas:
            valor = facturas_impagas.pop(numero)
            facturas_pagas[numero] = valor
        else:
            print("La factura no se encuentra ")
    else:
        break
    for fac_paga in facturas_pagas.keys():
        pagos += facturas_pagas[fac_paga]
    for fac_impaga in facturas_impagas.keys():
        impagos += facturas_impagas[fac_impaga]
        print(f"El total de facturas pagas son de: {pagos}")
        print(f"El total de facturas impagas son de: {impagos}")
