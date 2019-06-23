https://foofish.net/python-decorator.html

## Functions
```python
import logging

def use_logging(level):
    def decorator(func):
        def wrapper(*args, **kwargs):
            if level == "warn":
                print("11111111111")
                logging.warn("%s is running" % func.__name__)
            elif level == "info":
                print("222222222222")
                logging.info("%s is running" % func.__name__)
            return func(*args, **kwargs)
        return wrapper

    return decorator

@use_logging("info")
def foo(name, age=None, height=None):
    print("I am %s, age %s, height %s" % (name, age, height))

foo("aaa")
```

## Classes
```python
class Foo(object):
    def __init__(self, func):
        self._func = func

    def __call__(self):
        print ('class decorator running')
        self._func()
        print ('class decorator ending')

@Foo
def bar():
    print ('bar')

bar()
```

## functools.wraps
handle `- __doc__` and `- __name__`