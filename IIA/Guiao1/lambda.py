import math

impar = lambda n: n % 2 == 1

print('\nExer 1 - ', end="")
print(impar(4))
print(impar(3))

impar = "lixo"

print(impar)

positive = lambda n: n >= 0

print('\nExer 2 - ', end="")
print(positive(-1))
print(positive(0))
print(positive(1))

mod_comp = lambda x, y: abs(x) < abs(y)

print('\nExer 3 - ', end="")
print(mod_comp(3, 4))
print(mod_comp(-5, 4))

cart2polar = lambda x, y: (math.hypot(x, y), math.atan2(x, y))


print('\nExer 4 - ', end="")
print(cart2polar(3,4))


exe4_5 = lambda f, g, h: lambda x,y,z: h( f(x, y), g(y, z) )

nova = exe4_5(lambda x,y: x + y, lambda x,y: x * y, lambda x,y: x < y)
print('\nExer 5 - ', end="")
print(nova(2,3,4))

def quantificador_universal(lista, f):
    return not False in [f(e) for e in lista]
    #return lista == [e for e in lista if f(e)]
    #return [] == [e for e in lista if not (f(e))]

def quantificador_existencial(lista, f):
    return True in [f(e) for e in lista]

print('\nExer 6 - ', end="")
print(quantificador_universal([1,2,3], lambda x: x % 2 == 0))
print(quantificador_universal([1,2,3], lambda x: x < 4))

print('\nExer 7 - ', end="")
print(quantificador_existencial([1,2,3], lambda x: x % 2 == 0))
print(quantificador_existencial([1,2,3], lambda x: x > 4))


def exe4_8(l1, l2):
    if l1 == []:
        return True
    
    return l1[0] in l2 and exe4_8(l1[1:], l2)

print('\nExer 8 - ', end="")
print(exe4_8([1,2,3], [3,2,1]))


def exe4_8_2(l1, l2):
    return l1 == [e for e in l1 if e in l2]

print('\nExer 8.2 - ', end="")
print(exe4_8_2([1,2,3], [3,2,1]))


def menor(lista, ordem):
    if len(lista) == 1:
        return lista[0]

    m = menor(lista[1:], ordem)

    if ordem(lista[0], m):
        return lista[0]
    else:
        return m

print('\nExer 9 - ', end="")
print(menor([1,2,3,4,5], lambda x,y: x < y))


def menor_e_remove(lista, ordem):
    if len(lista) == 1:
        return lista[0], []
    
    m, l = menor_e_remove(lista[1:], ordem)

    if ordem(lista[0], m):
        return lista[0], [m] + l
    else:
        return m, [lista[0]] + l

print('\nExer 10 - ', end="")
print(menor_e_remove([2,3,4,5,1], lambda x,y: x < y))



def ex4_12(lista):
    if lista == []:
        return []
    
    return [cart2polar(lista[0][0], lista[0][1])] + ex4_12(lista[1:])

print('\nExer 12 - ', end="")
print(ex4_12([(1,2), (3,4), (5,6)]))


def ex4_13(l1, l2, ordem):
    if l1 == []:
        return l2
    
    if l2 == []:
        return l1

    l = ex4_13(l1[1:], l2[1:], ordem)

    if ordem(l1[0], l2[0]):
        return [l1[0]] + [l2[0]] + l
    else:
        return [l2[0]] + [l1[0]] + l

print('\nExer 13 - ', end="")
print(ex4_13([1,3,4,5,7,9], [0,2,4,6,8], lambda x,y: x < y))


def ex4_14(lista, func):
    if lista == []:
        return []
    
    l = ex4_14(lista[1:], func)

    return [func(elem) for elem in lista[0]] + l


print('\nExer 14 - ', end='')
print( ex4_14( [ [1,2,3], [4,5,6], [7,8,9] ], lambda x: x*x) )


def ex4_15(l1, l2, func):
    if len(l1) != len(l2):
        return None

    if l1 == []:
        return []

    l = ex4_15(l1[1:], l2[1:], func)

    return [func(l1[0], l2[0])] + l

print('\nExer 15 - ', end='')
print( ex4_15( [1,2,3], [4,5,6], lambda x,y: x+y) )



def ex4_16(lista, func, neutro):
    if lista == []:
        return []

    l = ex4_16(lista[1:], func, neutro)

    subl = []
    for e in lista[0]:
        if e != neutro:
            subl.append(func(e))
        else:
            subl.append(e)

    return subl + l

print('\nExer 16 - ', end="")
print( ex4_16( [ [1,2,3], [2,3,4], [3,4,5] ], lambda x: x - 1, 2 ) )