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

def concatList(list):
    if list == []:
        return []
    return list[0] + concatList(list[1:])
    
    
def replace(list, x, y):
    if list == []:
        return []

    if list[0] == x:
        list[0] = y

    return [list[0]] + replace(list[1:], x, y)



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

lista4 = [[1,2], [2,3], [4,5]]
print(concatList(lista4))

print(f'Substituir "5" por "2" na lista: {lista3} ')
print(replace(lista3, 5, 2))
