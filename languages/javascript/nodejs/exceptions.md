https://flaviocopes.com/node-exceptions/

## Creating exceptions
```coffeescript
throw <Error object>
```

## Error objects
```coffeescript
throw new Error('Ran out of coffee')
```
or
```coffeescript
class NotEnoughCoffeeError extends Error {
  //...
}
throw new NotEnoughCoffeeError

```

## Handling exceptions
```coffeescript
try {
  //lines of code
} catch (e) {

}
```

## Catching uncaught exceptions
listen for the uncaughtException event on the process object:
```coffeescript
process.on('uncaughtException', (err) => {
    console.error('There was an uncaught error', err)
    process.exit(1) //mandatory (as per the Node docs)
})
```

## Exceptions with promises
```coffeescript
doSomething1()
  .then(doSomething2())
  .then(doSomething3())
  .catch(err => console.error(err))
```

## Error handling with async/await
```coffeescript
async function someFunction() {
  try {
    await someOtherFunction()
  }
  catch (err) {
    console.error(err.message)
  }
}
```
