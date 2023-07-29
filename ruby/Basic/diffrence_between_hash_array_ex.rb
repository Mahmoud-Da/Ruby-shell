students = [
  {id: 1, name: "Jack", age: 18},
  {id: 2, name: "Tom", age: 19},
  {id: 3, name: "Paul", age: 18}
]
students.each do | student |
  puts "#{student[:name]} is a #{student[:age]} year old student."
end
