user = { id: 'jack123', password: '2020203', age: 23, gender: 'male' }
p user
p user[:id]
p user[:password]
p user[:age]
p user[:gender]

puts "This user is a #{user[:age].to_i} year old #{user[:gender]}."
