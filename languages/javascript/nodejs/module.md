https://www.tutorialsteacher.com/nodejs/nodejs-module-exports

## Local Modules
```coffeescript
# Log.js
var log = {
            info: function (info) { 
                console.log('Info: ' + info);
            },
            warning:function (warning) { 
                console.log('Warning: ' + warning);
            },
            error:function (error) { 
                console.log('Error: ' + error);
            }
    };

module.exports = log


# app.js
var myLogModule = require('./Log.js');

myLogModule.info('Node.js started');
```

## Export
### Export Literals
exports is an object. So it exposes whatever you assigned to it as a module.
```coffeescript
# Message.js
module.exports = 'Hello world';

//or

exports = 'Hello world';

# app.js
var msg = require('./Messages.js');

console.log(msg);
```

### Export Object
exports is an object. So, you can attach properties or methods to it.
```coffeescript
# Message.js
exports.SimpleMessage = 'Hello world';

//or

module.exports.SimpleMessage = 'Hello world';

# app.js
var msg = require('./Messages.js');

console.log(msg.SimpleMessage);
```
In the above example, require() function will return an object { SimpleMessage : 'Hello World'} and assign it to the msg variable. So, now you can use msg.SimpleMessage.

You can also attach an `object` to module.exports
```coffeescript
# data.js
module.exports = {
    firstName: 'James',
    lastName: 'Bond'
}

# app.js
var person = require('./data.js');
console.log(person.firstName + ' ' + person.lastName);
```

### Export Function
You can attach an anonymous function to exports object as shown below.
```coffeescript
# Log.js
module.exports.log = function (msg) { 
    console.log(msg);
};

# app.js
var msg = require('./Log.js');

msg.log('Hello World');
```
The msg variable becomes function expression in the above example. So, you can invoke the function using parenthesis ()

### Export function as a class
```coffeescript
# Person.js
module.exports = function (firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.fullName = function () { 
        return this.firstName + ' ' + this.lastName;
    }
}

# app.js
var person = require('./Person.js');

var person1 = new person('James', 'Bond');

console.log(person1.fullName());

```

## Load Module from Separate Folder
```coffeescript
var log = require('./utility/log.js');
```

Node.js also allows us to specify the path to the folder without specifying file name. For example, you can specify only utility folder without specifing log.js as shown below.
```coffeescript
var log = require('./utility');
```
In the above example, Node will search for a package definition file called package.json inside utility folder. This is because Node assumes that this folder is a package and will try to look for a package definition. The package.json file should be in a module directory. The package.json under utility folder specifies the file name using "main" key as below.
```coffeescript
# ./utility/package.json
{
    "name" : "log",
    "main" : "./log.js"
}
```
If package.json file does not exist then it will look for index.js file as a module file by default.


