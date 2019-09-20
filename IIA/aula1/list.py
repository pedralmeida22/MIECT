def list_len(list):
    if list == []:
        return 0
    return 1 + list_len(list[1:])


def list_sum(list):
    if list == []:
        return 0
    return list[0] + list_sum(list[1:])

def exist(list, elem):
    if list == []:
        return False
    if elem == list[0]:
        return True
    return exist(list[1:], elem)

def concat(list1, list2):   #return list1 + list2
    if list1 == []:
        return list2
    if list2 == []:
        return list1
    list1.append(list2[0])
    return concat(list1, list2[1:])


def invert(list):
    if list == []:
        return []
    return invert(list[1:]) + [list[0]]


def capicua(list):  # return list == invert(list)
    if list == []:
        return True
    return list[0] == list[-1] and capicua(list[1:-1])
    
    

lista = [1,2,3,4,5]
print(list_len(lista))
print(list_sum(lista))
print(exist(lista, 2))
print(exist(lista, 6))

lista2 = [6,7,8,9]
print(concat(lista, lista2))

print(invert(lista))

lista3 = [1,3,5,3,1]
print(capicua(lista))
print(capicua(lista3))