# Types
## 判断类型
https://www.cnblogs.com/a546558309/p/3608194.html

```coffeescript
typeof 2                # number
typeof null             # object
typeof {}               # object
typeof []               # object
typeof (function(){})   # function
typeof undefined        # undefined
typeof '222'            # string
typeof true             # boolean
```

## Object
```coffeescript
singers = {Jagger: "Rock", Elvis: "Roll"}
```


# Workflows

## Loops
```coffeescript
# Eat lunch.
eat = (food) -> "#{food} eaten."
eat food for food in ['toast', 'cheese', 'wine']

# Fine five course dining.
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']
menu = (i, dish) -> "Menu Item #{i}: #{dish}" 
menu i + 1, dish for dish, i in courses

# Health conscious meal.
foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'

```

## Functions
### Define
`function_name = -> function_body`

- `->` is compiled in to `(function() {});`
- It is not mandatory to use the return keyword in CoffeeScript. Every function in CoffeeScript returns the last statement in the function automatically.



```coffeescript
module.exports = (robot) ->

  # Any message that contains "badger" will trigger the following function
  robot.hear /badger/i, (res) ->

    # res.message is a SlackTextMessage instance that represents the incoming message Hubot just heard
    robot.logger.debug "Received message #{res.message.text}"
```
- optional list of parameters in parentheses
- an arrow
- and the function body
    ```coffeescript
    square = (x) -> x * x
    cube   = (x) -> square(x) * x
    ```
- default values for arguments, will be used if the incoming argument is missing (undefined)
    ```coffeescript
    fill = (container, liquid = "coffee") ->
      "Filling the #{container} with #{liquid}..."
    ```


# Modules
## module.exports
https://blog.csdn.net/xqnode/article/details/60610885

在模块最后写好模块接口，声明这个模块对外暴露什么内容，module.exports 提供了暴露接口的方法。
```coffeescript
# app.js
var app = {
	name: 'app',
	version: '1.0.0',
	sayName: function(name){
		console.log(this.name);
	}
}
module.exports = app;

# 调用
var app = require('./app.js');
app.sayName('hello');//hello
```


# Classes
## 创建与实例化
```coffeescript
class Animal
  constructor: (@name) ->

  move: (meters) ->
    alert @name + " moved #{meters}m."

class Snake extends Animal
  move: ->
    alert "Slithering..."
    super 5

class Horse extends Animal
  move: ->
    alert "Galloping..."
    super 45

sam = new Snake "Sammy the Python"
tom = new Horse "Tommy the Palomino"

sam.move()
tom.move()
```


# I/O
## read file
```coffeescript
fs = require 'fs'
config = 'test.txt'

foo = ->
  fs.readFileSync config, 'utf8'

console.log foo()
```

## read line by line
https://nodejs.org/api/readline.html

```coffeescript
lineReader = require('readline').createInterface({
      input: require('fs').createReadStream(hosts)
    });

lineReader.on 'line', (line) ->
  robot.logger.info "Line from file: #{line}"
```
解释
- lineReader.on: Event: 'line'

# Exceptions
## try/catch
```coffeescript
try
  allHellBreaksLoose()
  catsAndDogsLivingTogether()
catch error
  print error
finally
  cleanUp()
```


