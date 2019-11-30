# Pedro Almeida nmec: 89205 
# Discutido com: 
# - Dário Matos nmec: 89288
# - Samuel Duarte nmec: 89222
# - Pedro Valente nmec: 88858
# - André Alves nmec: 88811

import math

from tree_search import *

# classe que extende SearchNode tendo mais atributos
class MyNode(SearchNode):
    def __init__(self,state, parent, depth, cost, evalfunc):
        super().__init__(state, parent)
        self.depth = depth
        self.cost = cost
        self.evalfunc = evalfunc
        self.children = []

        # se eu nao for a root, acrescento-me à lista de filhos do pai
        if self.parent != None:
                self.parent.children += [self]

    def in_parent(self, state):
        if self.parent == None:
            return False
        
        return self.parent.state == state or self.parent.in_parent(state)

class MyTree(SearchTree):

    def __init__(self, problem, strategy='breadth',max_nodes=None): 
        #IMPLEMENT HERE
        super().__init__(problem, strategy)
        self.root = MyNode(problem.initial, None, 0, 0, None)
        self.open_nodes = [self.root]
        self.solution_cost = 0
        self.solution_length = 0
        self.total_nodes = 1
        self.terminal_nodes = 1     # A root conta como nó terminal
        self.non_terminal_nodes = 0
        self.max_nodes = max_nodes

    def astar_add_to_open(self,lnewnodes):
        #IMPLEMENT HERE
        self.open_nodes = sorted(self.open_nodes + lnewnodes, key= lambda node: node.evalfunc)
    
    # http://ozark.hendrix.edu/~ferrer/courses/335/f11/lectures/effective-branching.html
    def recursive_effective_branching_factor(self, error_tolerance, estimate):
        
        n = self.total_nodes
        
        nl = 1
        for d in range(self.solution_length + 1):
            nl += math.pow(estimate, d)

        if abs(nl - n) > error_tolerance:
            if nl > n:
                return self.recursive_effective_branching_factor(1, estimate - 0.001)
            elif nl < n:
                return self.recursive_effective_branching_factor(1, estimate + 0.001)
        else: 
            return estimate


    def effective_branching_factor(self):
        #IMPLEMENT HERE
        estimate = math.pow(self.total_nodes, (1/self.solution_length))
        return self.recursive_effective_branching_factor(1, estimate)


    def update_ancestors(self,node):
        #IMPLEMENT HERE
        try:        
            min_children_cost = min(node.children, key= lambda x: x.evalfunc)            
            node.evalfunc = min_children_cost.evalfunc
            return self.update_ancestors(node.parent) 
        except:
            pass
    
    # função que devolve uma lista com todos os nós pais de apenas nós terminais
    def terminal_fathers(self):
        terminal_father = []
        for node in self.open_nodes:
            # se for nó terminal, adiciona o pai à lista de pais de filhos terminais (ainda podem ser avós)
            if node.children == []:
                terminal_father += [node.parent]

        # lista de avos, para retirar da lista terminal_father
        to_eliminate = []
        for node in terminal_father:
            for c in node.children:
                if c.children != []:
                    to_eliminate.append(node)
                    break
        
        # eliminar nós avós da lista terminal_fathers
        for node in to_eliminate:
            terminal_father.remove(node)

        return terminal_father


    def discard_worse(self):
        #IMPLEMENT HERE
        nodes = self.terminal_fathers()

        # da lista de possíveis nós a remover, ordena por ordem da lambda evalfunc e guarda o valor mais alto
        max_node = max(nodes, key= lambda x: x.evalfunc)

        # remover os filhos do nó max_node
        for c in max_node.children:
            self.open_nodes.remove(c)
            self.terminal_nodes -= 1

        max_node.children = []
        # atualizar valores de nós terminais e não terminais
        self.terminal_nodes += 1
        self.non_terminal_nodes -= 1
        self.open_nodes.append(max_node)
        


    def search2(self):
        #IMPLEMENT HERE
        while self.open_nodes != []:
            # remove nós enquanto o o número de nós for maior que o max_nodes
            if self.max_nodes != None:
                while (self.terminal_nodes + self.non_terminal_nodes) > self.max_nodes:
                        self.discard_worse()

            node = self.open_nodes.pop(0)
            
            if self.problem.goal_test(node.state):
                # custo total da solução é igual ao custo até ao nó 
                self.solution_cost = node.cost
                # número de transições de estado é igual à profundidade do nó solução
                self.solution_length = node.depth
                return self.get_path(node)

            lnewnodes = []
            for a in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state,a)

                # ver se o no ja foi visitado
                if not node.in_parent(newstate):    
                    self.total_nodes += 1
                    
                    lnewnodes += [MyNode(newstate, node, node.depth + 1, 
                                node.cost + self.problem.domain.cost(node.state, a),
                                node.cost + self.problem.domain.cost(node.state, a) + self.problem.domain.heuristic(newstate , self.problem.goal) )]

            # atualizar valores de nós terminais e não terminais
            if len(lnewnodes):
                self.terminal_nodes += len(lnewnodes)
            
            self.non_terminal_nodes += 1
            self.terminal_nodes -= 1

            self.add_to_open(lnewnodes)
            self.update_ancestors(node)
        return None

    # shows the search tree in the form of a listing
    def show(self,heuristic=True,node=None,indent=''):
        if node==None:
            self.show(heuristic,self.root)
            print('\n')
        else:
            line = indent+node.state
            if heuristic:
                line += (' [' + str(node.evalfunc) + ']')
            print(line)
            if node.children==None:
                return
            for n in node.children:
                self.show(heuristic,n,indent+'  ')


