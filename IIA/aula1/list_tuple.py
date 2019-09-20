def separate(list):
    if list == []:
        return [], []   # retorna um tuplo

    a1, b1 = list[0]

    l1, l2 = separate(list[1:])

    return [a1] + l1, [b1] + l2

def remove_and_count(list, elem):
    if list == []:
        return [], 0
    
    l, c = remove_and_count(list[1:], elem)

    if list[0] == elem:
        return l, c+1
    else:
        return [list[0]] + l, c


lista = [(1,'a'),(2,'b'), (3,'c')]
print(separate(lista))

print(remove_and_count([1,2,2,2,3,4,5],2))