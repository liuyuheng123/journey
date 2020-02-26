## virtualenv
```
For Python 2, you’ll use:
    virtualenv <directory_name>
while for Python 3, on Unix-like systems it’s:
    pyvenv <directory_name>

source bin/activate
```

## REPL
- python
- Jupyter Notebook: https://jupyter.org/

## pylint
Avoid misspellings.

https://kirankoduru.github.io/python/pylint-with-pycharm.html


## patterns
### Strategy
Too many if/elif/else, hard to write tests and changes.
```python
def strategy1():
    ...

def strategy2():
    ...
    
strategies = {
    'condition1': strategy1,
    'condition2': strategy2,
    ...
}

def do_awesome_stuff():
    which_one = ...
    strategy = strategies[which_one]
    strategy()
    ...
```

Remove the keys in dict
```python
def do_awesome_stuff(strategy):
    ...
    strategy()
    ...

result = do_awesome_stuff(strategy1)
```
dependency injection
```python
class Foo(object):

    def __init__(self, strategy):
        self.strategy = strategy

    def do_awesome_stuff(self):
        ...
        self.strategy()
        ...

foo = Foo(strategy2)
foo.do_awesome_stuff()
```

## property
https://www.programiz.com/python-programming/property
