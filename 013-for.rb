# Alternativa 1
for i in 0..5
  puts i
end

# Alternativa 2
(1..5).each do |i|
  puts i
end

# Usando com array
moviesList = ["O Máscara", "Homem Aranha", "Batman", "Super Mario"]
moviesList.each do |movie|
  puts movie
end

# Utilizando com break
moviesList.each do |movie|
  break if movie == "Homem Aranha"
  puts movie
end

# Utilizando com next
moviesList.each do |movie|
  next if movie == "Homem Aranha"
  puts movie
end

# 4 - Avaliação do Jogo
puts "Digite o nome do filme"
  movieName = gets.chomp
  
  puts "Digite quantas avaliações deseja fazer no filme"
  movieRating = gets.chomp.to_i
  
sum = 0
movieRating.times do
  puts "Digite a nota do filme"
  rate = gets.chomp.to_f
  sum += rate
end

average = sum / movieRating
puts "Média de avaliação do filme #{movieName} é %.2f" % average