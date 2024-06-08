bday = Time.new(2005, 1, 18)
summer = Time.new(2020, 5, 21)
winter = Time.new(2022, 3, 10)
sete_set = Time.new(1822, 9, 7)

puts bday > sete_set
puts summer >= winter
puts sete_set > winter
puts bday == winter

puts summer.between?(bday, winter)