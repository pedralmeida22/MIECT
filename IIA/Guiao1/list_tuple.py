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


def count_elem(list, elem):
    if list == []:
        return 0

    count = count_elem(list[1:], elem)

    if elem == list[0]:
        return count + 1

    return count



def count_elems(list):
    if list == []:
        return []

    c = count_elem(list, list[0])
    return [(list[0], c)] + count_elems(list[1:])



lista = [(1,'a'),(2,'b'), (3,'c')]
lista2 = [1,2,2,2,3,4,5]
print(separate(lista))

print(remove_and_count([1,2,2,2,3,4,5], 2))

print(count_elem(lista2, 2))

print(f'Count elements in {lista2}: ' + str(count_elems(lista2)))