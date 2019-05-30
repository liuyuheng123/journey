# Questions

## Print object.
```coffeescript
const util = require('util')

console.log(util.inspect(myObject, {showHidden: false, depth: null}))

// alternative shortcut
console.log(util.inspect(myObject, false, null, true /* enable colors */))
```

## Get current dir.
- `__filename`
- `__dirname`

# Trouble Shooting
## Require returns an empty object.
Check circular dependency.
https://stackoverflow.com/questions/23875233/require-returns-an-empty-object/23875299

