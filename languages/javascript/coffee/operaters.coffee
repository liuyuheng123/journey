console.log("\n[==]")
if 1 == 1 then console.log "1 == 1"
if 'abc' == 'abc' then console.log "abc == abc"

console.log("\n[!=]")
if 1 != 0 then console.log "1 != 0"
if 'A' != 'B' then console.log "A != B"

console.log("\n[>,<,>=,<=]")
if 1 > 0 then console.log "1 > 0"

console.log("\n[&&]")
if 2 != 0 && 2 != 1 then console.log "2 != 0 && 2 != 1"

console.log("\n[||]")
if 1 == 0 || 1 == 1 then console.log "1 == 0 || 1 == 1"

console.log("\n[!]")
if ! (1 == 0) then console.log "! (1 == 0)"

console.log("\n[?]")
verify_name = name?
console.log(verify_name) # false

name = "Henry"
verify_name = name?
console.log(verify_name) # true

speed = 15 unless speed?
console.log(speed) # 15

speed = 0
speed ?= 15
console.log(speed) # 0

footprints = yeti ? "bear"
console.log(footprints) # "bear"