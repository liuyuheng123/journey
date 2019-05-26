# Types
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


