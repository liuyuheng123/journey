console.log("[if]")
if 1 == 1
  console.log("if 1 == 1")

console.log("\n[else]")
if 1 == 0
  console.log("1 == 0")
else
  console.log("else 1 == 0")

console.log("\n[else if]")
if 1 == 0
  console.log("1 == 0")
else if 1 == 1
  console.log("else if 1 == 1")
else
  console.log("1 != 0 and 1 != 1")

console.log("\n[unless]")
unless 1 == 0
  console.log "unless 1 == 0"

console.log("\n[postfix if]")
console.log "postfix if 1 == 1" if 1 == 1

console.log("\n[postfix unless]")
console.log "postfix unless 1 == 0" unless 1 == 0

console.log("\n[ternary operator]")
if 1 == 0 then console.log "ternary operator 1 == 1" else console.log "ternary operator 1 == 0"

console.log("\n[swtich/when/else]")
num = 0
switch num
  when 2 then console.log("num == 2")
  when 1 then console.log("num == 1")
  else console.log("num != 2, 1")