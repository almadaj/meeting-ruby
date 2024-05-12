movies = ["Harry Potter", "Homem Aranha", "Super Mario"]

# 1 - Indexação e Atribuição

# puts movies[0]
# puts movies[-1]
# movies[2] = "Top Gun"
# puts movies

movies << "Avatar"

# 2 - Métods Úteis
puts movies.length
puts movies.first
puts movies.last
movies.append("Procurando Nemo")
puts movies

puts movies.sort()
puts movies.shuffle()

# 3 - Recuperando indice e valor
movies.each_with_index{|value, index| puts "#{index}: #{value}"}