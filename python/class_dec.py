#!/usr/bin/python3


class DecorClass(object):
    x = None

    def __init__(self, arg1, arg2):
        self.a1 = arg1
        self.a2 = arg2
        self.var = None

    @property
    def var(self):
        return self._var

    @var.setter
    def var(self, val):
        self._var = val

    def __call__(self, function):
        def wrapped(*args):
            print('class members: {0}, {1}'.format(self.a1, self.a2))
            print('wrapped function: {}'.format(args))
            function(*args, self.a1, self.a2)
        return wrapped


@DecorClass(1, 2)
def my_function(f1, f2, *args):
    print('decorated function arguments: {0}, {1}'.format(f1, f2))
    print('decorator class args: {}'.format(args))


if __name__ == '__main__':
    my_function(3, 4)
    print(DecorClass(1, 2).x)
