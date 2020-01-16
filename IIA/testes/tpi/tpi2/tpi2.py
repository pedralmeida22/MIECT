# Pedro Almeida 89205
# discutido com:
# Pedro Valente 88858
# Samuel Duarte 89222
# Dário Matos 89288

from semantic_network import *
from bayes_net import *


class MySN(SemanticNetwork):

    # calcula os subtipos de uma entidade
    def entity_subtypes(self, entity, traverse):
        if traverse:
            return list(set([d.relation.entity1 for d in self.declarations if isinstance(d.relation, Subtype)
                         and d.relation.entity2 == entity]))
        return list(set([d.relation.entity2 for d in self.declarations if isinstance(d.relation, Subtype)
                         and d.relation.entity1 == entity]))

    # calcula as dependências de uma entidade
    def entity_dependents(self, entity, traverse):
        if traverse:
            return list(set([d.relation.entity1 for d in self.declarations if isinstance(d.relation, Depends)
                         and d.relation.entity2 == entity]))
        return list(set([d.relation.entity2 for d in self.declarations if isinstance(d.relation, Depends)
                         and d.relation.entity1 == entity]))

    def query_dependents(self, entity):
        # IMPLEMENT HERE

        # dependências
        dependents = self.entity_dependents(entity, True)
        final = dependents

        for d in dependents:
            subtypes = self.entity_subtypes(d, True)
            # eliminar superTypes
            if subtypes:
                final.remove(d)
            final += subtypes + self.query_dependents(d)

        # subtypes
        subtypes = self.entity_subtypes(entity, True)
        for s in subtypes:
            final += dependents + self.query_dependents(s)

        return list(set(final))

    def query_causes(self, entity):
        # IMPLEMENT HERE
        dependents = self.entity_dependents(entity, False) + self.entity_subtypes(entity, False)
        final = self.entity_dependents(entity, False)

        # condição de paragem
        if not dependents:
            return []

        # procura dependências
        for d in dependents:
            temp = self.entity_dependents(d, False)
            final += temp + self.query_causes(d)

        return list(set(final))

    def query_causes_sorted(self, entity):
        #IMPLEMENT HERE
        list_debugs = self.query_local(rel='debug_time')
        temp = []
        for cause in self.query_causes(entity):
            values = [d.relation.entity2 for d in list_debugs if d.relation.entity1 == cause]
            # calcula a média da lista (T)
            # adiciona a outra lista o tuplo (X,T)
            temp += [(cause, (sum(values)/len(values)))]

        # retorna a lista ordenada
        return sorted(temp, key=lambda x: (x[1], x[0]))


class MyBN(BayesNet):

    def markov_blanket(self, var):
        #IMPLEMENT HERE

        # procurar pais
        parents = [(list(val)[0]) for val in list(self.dependencies[var])[0]]

        # filhos
        childrens = []
        for v in self.dependencies:
            childrens += [v for val in list(self.dependencies[v])[0] if val[0] == var]

        # outros pais
        otherParents = []
        for child in childrens:
            otherParents += [val[0] for val in list(self.dependencies[child])[0] if val[0] != var]

        return parents + childrens + otherParents
