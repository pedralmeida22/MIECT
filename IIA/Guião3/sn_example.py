



# Redes semanticas
# -- Exemplo
# 
# Inteligencia Artificial & Introducao a Inteligencia Artificial
# DETI / UA
#
# (c) Luis Seabra Lopes, 2012-2019
# 2019/10/20
#


from semantic_network import *

a = Association('socrates','professor','filosofia')
s = Subtype('homem','mamifero')
m = Member('socrates','homem')

da = Declaration('descartes',a)
ds = Declaration('darwin',s)
dm = Declaration('descartes',m)

z = SemanticNetwork()
z.insert(da)
z.insert(ds)
z.insert(dm)
z.insert(Declaration('darwin',Association('mamifero','mamar','sim')))
z.insert(Declaration('darwin',Association('homem','gosta','carne')))

# novas declaracoes

z.insert(Declaration('darwin',Subtype('mamifero','vertebrado')))
z.insert(Declaration('descartes', Member('aristoteles','homem')))

b = Association('socrates','professor','matematica')
z.insert(Declaration('descartes',b))
z.insert(Declaration('simao',b))
z.insert(Declaration('simoes',b))

z.insert(Declaration('descartes', Member('platao','homem')))

e = Association('platao','professor','filosofia')
z.insert(Declaration('descartes',e))
z.insert(Declaration('simao',e))

z.insert(Declaration('descartes',Association('mamifero','altura',1.2)))
z.insert(Declaration('descartes',Association('homem','altura',1.75)))
z.insert(Declaration('simao',Association('homem','altura',1.85)))
z.insert(Declaration('darwin',Association('homem','altura',1.75)))

z.insert(Declaration('descartes', Association('socrates','peso',80)))
z.insert(Declaration('darwin', Association('socrates','peso',75)))
z.insert(Declaration('darwin', Association('platao','peso',75)))


z.insert(Declaration('damasio', Association('filosofo','gosta','filosofia')))
z.insert(Declaration('damasio', Member('socrates','filosofo')))


# Extra - descomentar as restantes declaracoes para o exercicio II.2.16

#z.insert(Declaration('descartes', AssocNum('socrates','pulsacao',51)))
#z.insert(Declaration('darwin', AssocNum('socrates','pulsacao',61)))
#z.insert(Declaration('darwin', AssocNum('platao','pulsacao',65)))

#z.insert(Declaration('descartes',AssocNum('homem','temperatura',36.8)))
#z.insert(Declaration('simao',AssocNum('homem','temperatura',37.0)))
#z.insert(Declaration('darwin',AssocNum('homem','temperatura',37.1)))
#z.insert(Declaration('descartes',AssocNum('mamifero','temperatura',39.0)))

#z.insert(Declaration('simao',Association('homem','gosta','carne')))
#z.insert(Declaration('darwin',Association('homem','gosta','peixe')))
#z.insert(Declaration('simao',Association('homem','gosta','peixe')))
#z.insert(Declaration('simao',Association('homem','gosta','couves')))

#z.insert(Declaration('damasio', AssocOne('socrates','pai','sofronisco')))
#z.insert(Declaration('darwin', AssocOne('socrates','pai','pericles')))
#z.insert(Declaration('descartes', AssocOne('socrates','pai','sofronisco')))

print('list_associations'.center(40, '-'))
print(z.list_associations())

print('list_objects'.center(40, '-'))
print(z.list_objects())

print('list_users'.center(40, '-'))
print(z.list_users())

print('list_types'.center(40, '-'))
print(z.list_types())

print('list_entity_associations'.center(40, '-'))
print(z.list_entity_associations('socrates'))

print('list_user_associations'.center(40, '-'))
print(z.list_user_associations('descartes'))

print('list_associations_by_user'.center(40, '-'))
print(z.list_associations_by_user('descartes'))

print('list_local_associations'.center(40, '-'))
print(z.list_local_associations('socrates'))

print('predecessor'.center(40, '-'))
print(z.predecessor('vertebrado', 'socrates'))

print('predecessor_path'.center(40, '-'))
print(z.predecessor_path('vertebrado', 'socrates'))

print('query'.center(40, '-'))
print(z.query('socrates', 'altura'))

print('query2'.center(40, '-'))
print(z.query2('homem', 'mamar'))

print('query_cancel'.center(40, '-'))
print(z.query_cancel('homem', 'altura'))
