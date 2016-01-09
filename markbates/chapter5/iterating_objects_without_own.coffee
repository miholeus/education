myObject =
  name: "Mark"
for key, value of myObject
  console.log "#{key} is #{value}"
Object.prototype.dob = new Date(1976, 7, 24)
for key, value of myObject
  console.log "#{key} is #{value}"
anotherObject =
  name: "Bob"
for key, value of anotherObject
  console.log "#{key} is #{value}"
