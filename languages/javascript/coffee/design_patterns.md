### Singleton and Factory
Framework
```coffeescript
module.exports = class Factory
  instance = null

  @getFactory: () ->
    instance ?= new PrivateFactory()

  class PrivateFactory
    constructor: () ->
      @factory = instance

    getInstance: (clazz) ->
        new clazz(@arg)
```

Client
```coffeescript
Factory = (require './path/to/Factory.coffee').getFactory()
aInstance = Factory.getInstance((require './path/to/aInstance.coffee'))
```

### Template
```coffeescript
module.exports = class ParentClass
  constructor: (@xx) ->

  workflow: (res, ui) ->
    this.process(((output) ->
      ui.method(res, output)
    ))

  process: ->
    throw Error(">>>process<<<: unimplemented method")
```

Client
```coffeescript
ParentClass = require("./ParentClass.coffee")

module.exports = class ChildClass extends ParentClass

  # ---------
  # override
  # ---------
  process: (callback) ->
    # ...
    callback(output)
```