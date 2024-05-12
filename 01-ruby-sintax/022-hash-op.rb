movies = {:name => "Super Mario Bros", :year => 2023}

puts movies.size
puts movies.length
puts movies.min
puts movies.max
# puts movies.fetch(:name)

#Adicionando novo item
movies.store(:genre, "Aventura")
movies.store(:rating, 4.3)
puts movies

#Excluindo chave
movies.delete(:rating)
puts movies
#Limpando itens do Hash
movies.clear()
puts movies