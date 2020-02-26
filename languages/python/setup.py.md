## py_modules
举个简单的例子，你需要发布两个模块 foo 以及 bar.bar，以供别人使用(import foo 和 import bar.bar)。
```
pure_module
├── bar
│   └── bar.py
│   └── __init__.py
├── foo.py
└── setup.py
```

setup.py
```python
from setuptools import setup

NAME = 'foo'
VERSION = '1.0'
PY_MODULES = ['foo', 'bar.bar']

setup(
    name=NAME,
    version=VERSION,
    py_modules=PY_MODULES
)
```

```bash
python setup.py install --user --prefix= --record install.txt
```
安装后，便可以直接通过 import foo 和 import bar.bar 直接使用了

## packages
在存在大量模块的情况下，省去像 py_modules 一样穷举模块的麻烦
```python
from setuptools import setup

NAME = 'foo'
VERSION = '1.0'
PACKAGES = ['', 'bar']

setup(
    name=NAME,
    version=VERSION,
    packages=PACKAGES
)
```
默认的情况下，包的名字和目录的名字是一致的，比如 bar 包对应了 bar 目录，且包的路径表示是相对于 distribution root 的（也就是 setup.py 所在目录）.

`package_dir`它的作用是将 package 映射到其他目录，这样的一个好处是方便将 package 移到其他目录而不用修改 `packages` 的参数值。举个例子，假设我们现在需要把 bar 移到 foobar 目录下，按照原来的脚本，Setuptools 是无法成功找到 bar 包的。通过 `package_dir = {'bar':'foobar'}`，将原来的 bar package 映射到 foobar 下。完整的脚本如下：
```python
from setuptools import setup

NAME = 'foo'
VERSION = '1.0'
PACKAGE_DIR = {'bar': 'foobar'}
PACKAGES = ['', 'bar']

setup(
    name=NAME,
    version=VERSION, 
    package_dir=PACKAGE_DIR, 
    packages=PACKAGES
)
```

## find_packages()
For simple projects, it’s usually easy enough to manually add packages to the packages argument of setup(). However, for very large projects (Twisted, PEAK, Zope, Chandler, etc.), it can be a big burden to keep the package list updated. That’s what setuptools.find_packages() is for.

find_packages() takes a source directory and two lists of package name patterns to exclude and include. If omitted, the source directory defaults to the same directory as the setup script. Some projects use a src or lib directory as the root of their source tree, and those projects would of course use "src" or "lib" as the first argument to find_packages(). (And such projects also need something like package_dir={'':'src'} in their setup() arguments, but that’s just a normal distutils thing.)



## install_requires 和 dependency_links
```
install_requires 可以声明 package 安装时所需的依赖模块及其版本。安装 package 时，Setuptools 便能够从 PyPi 上自动下载其所依赖的模块，并且将依赖信息包含进 Python Eggs 中。
```

```
在某些环境下无法正常访问 Pypi 下，我们也可以通过 dependency_links 参数 指定到自己的 python 源，这样便可以解决下载问题。比如，dependency_links = ['http://xxx/xmltodict', 'http://xxx/pycurl']。
下载的资源可以满足以下条件：

通过 python setup.py sdist 进行分发的压缩文件，默认情况下在 linux 为 .tar.gz，在 windows 为 zip
单一的 py 文件
VCS 仓库（Subversion, Mercurial, Git）
URL 链接可以是：

可以直接下载的 URL
包含资源下载链接的网页 URL
仓库 URL

```

## uninstall
```bash
python setup.py install --record files.txt

xargs rm -rf < files.txt
```


## Ref
https://www.cnblogs.com/cposture/p/9029023.html
https://setuptools.readthedocs.io/en/latest/setuptools.html#using-find-packages
https://stackoverflow.com/questions/1550226/python-setup-py-uninstall

