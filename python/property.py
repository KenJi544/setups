class PropTest():
    var = None

    def __init__(self):
        pass

    @property
    def var(self):
        return self.var

    @var.setter
    def var(self, value):
        self.var = value


if __name__ == '__main__':
    test = PropTest()
    print(test.var)
    PropTest.var = 1
    print(test.var)
    test2 = PropTest()
    print(test2.var)
