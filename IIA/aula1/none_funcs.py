def head(list):
    if list == []:
        return None
    return list[0]

def tail(list):
    if list == []:
        return None
    return list[1:]

def juntar(l1, l2):
    if len(l1) != len(l2):
        return None

    if l1 == []:
        return []
    
    return [(l1[0], l2[0])] + juntar(l1[1:], l2[1:])

def separate(list):
    if list == []:
        return [], []   # retorna um tuplo

    a1, b1 = list[0]

    l1, l2 = separate(list[1:])

    return [a1] + l1, [b1] + l2


def smallest(list):
    if list == []:
        return None

    m = smallest(list[1:])
    if m == None or list[0] < m:
        return list[0]
    return m

def smallest_others(list):  # continue
    if list == []:
        return None, None

    s = smallest(list)

    return None
    
    
def max_min(list):
    if list == []:
        return None, None

    mx, mn = max_min(list[1:])

    if mx == None and mn == None:
        return list[0], list[0]

    if list[0] > mx:
        return list[0], mn

    if list[0] < mn:
        return mx, list[0]

    return mx, mn




lista = [(1,'a'), (2,'b'), (3,'c')]
lista2 = [5,4,6,3,7,2,8,1,9]

print(separate(lista))
print(juntar(*separate(lista)))

print('smallest: ' + str(smallest(lista2)))
print(smallest_others(lista2))

mx, mn = max_min(lista2)
print(f'Max:{mx} | Min:{mn}')
