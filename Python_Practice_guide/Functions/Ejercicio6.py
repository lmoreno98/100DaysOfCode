def media(list):
    sum = 0
    for num in list:
        sum += num
    median = sum/len(list)
    return median


lista = [1,1,1,2,3,4,4,4,5,6,7,7,7,8,8,6]

print(media(lista))
