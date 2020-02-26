https://www.cnblogs.com/lovemo1314/archive/2011/04/29/2032871.html
实现__call__函数，这个类型就成为可调用的。把这个类型的对象当作函数来使用，相当于重载了括号运算符。
```python
class g_dpm(object):

    def __init__(self, g):
        self.g = g

    def __call__(self, t):
        return (self.g*t**2)/2

e_dpm = g_dpm(9.8) 
s = e_dpm(7.6)
```

https://docs.python.org/3/reference/datamodel.html?highlight=__call__#object.__call__
```
3.3.6. Emulating callable objects
object.__call__(self[, args...])
Called when the instance is “called” as a function; if this method is defined, x(arg1, arg2, ...) is a shorthand for x.__call__(arg1, arg2, ...).
```