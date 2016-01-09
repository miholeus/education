myObject =
  name: "Mark"
for own key, value of myObject
  console.log "#{key} is #{value}"
Object.prototype.dob = new Date(1976, 7, 24)
for own key, value of myObject
  console.log "#{key} is #{value}"
anotherObject =
  name: "Bob"
for own key, value of anotherObject
  console.log "#{key} is #{value}"
