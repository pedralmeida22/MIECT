class Value:
    def __init__(self):
        pass

    def value(self):
        return self.v

    def __str__(self):
        return str(self.v)


class Constante(Value):
    def __init__(self, c):
        self.v = c


class Variavel(Value):
    def __init__(self):
        pass

    def atribuir(self, e):
        assert isinstance(e, Value)
        self.v = e.value()


class Soma(Value):
    def __init__(self, e1, e2):
        assert isinstance(e1, Value)
        assert isinstance(e2, Value)

        self.v = e1.value() + e2.value()

    


x = Variavel()
x.atribuir(Soma(Constante(4), Constante(3)))

print(Soma(Constante(5), x))