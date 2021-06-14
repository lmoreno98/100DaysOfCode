def sep_and_count(sentence):
    dic = {}
    lista = sentence.split(" ")
    for palabra in lista:
        dic[palabra] = len(palabra)
    print(dic)


sep_and_count("Hola co en lsad asfkasf")
