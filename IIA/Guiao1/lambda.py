import math

impar = lambda n: n % 2 == 1

print(impar(4))
print(impar(3))

impar = "lixo"

print(impar)

positive = lambda n: n >= 0

print(positive(-1))
print(positive(0))
print(positive(1))

mod_comp = lambda x, y: abs(x) < abs(y)

print(mod_comp(3, 4))
print(mod_comp(-5, 4))

cart2polar = lambda x, y: (math.hypot(x, y), math.atan2(x, y))

print(cart2polar(2,3))


exe4_5 = lambda f,g,h: lambda x,y,z: h( f(x, y), g(y, z) )

nova = exe4_5(lambda x,y: x + y, lambda x,y: x * y, lambda x,y: x < y)
print(nova(2,3,4))

def quantificador_universal(lista, f):
    return not False in [f(e) for e in lista]
    #return lista == [e for e in lista if f(e)]
    #return [] == [e for e in lista if not (f(e))]

def quantificador_existencial(lista, f):
    return True in [f(e) for e in lista]

print(quantificador_universal([1,2,3], lambda x: x % 2 == 0))
print(quantificador_universal([1,2,3], lambda x: x < 4))

print(quantificador_existencial([1,2,3], lambda x: x % 2 == 0))
print(quantificador_existencial([1,2,3], lambda x: x > 4))

print('\nexe4_8:')
def exe4_8(l1, l2):
    if l1 == []:
        return True
    
    return l1[0] in l2 and exe4_8(l1[1:], l2)

print(exe4_8([1,2,3], [3,2,1]))

print('\nexe4_8_2:')
def exe4_8_2(l1, l2):
    return l1 == [e for e in l1 if e in l2]

print(exe4_8_2([1,2,3], [3,2,1]))


def menor(lista, ordem):
    if len(lista) == 1:
        return lista[0]

    m = menor(lista[1:], ordem)

    if ordem(lista[0], m):
        return lista[0]
    else:
        return m

print(menor([1,2,3,4,5], lambda x,y: x < y))


def menor_e_remove(lista, ordem):
    if len(lista) == 1:
        return lista[0], []
    
    m, l = menor_e_remove(lista[1:], ordem)

    if ordem(lista[0], m):
        return lista[0], [m] + l
    else:
        return m, [lista[0]] + l

print(menor_e_remove([1,2,3,4,5], lambda x,y: x < y))