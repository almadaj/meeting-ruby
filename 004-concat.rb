puts "Informe o nome do filme:"
name = gets.chomp
    
puts "Informe o ano do filme:"
yearRelease = gets.chomp.to_i
    
puts "Informe o preço do filme:"
price = gets.chomp.to_f


#Usando puts +
puts "Nome do filme: " + name
puts "Ano de lançamento: " + yearRelease.to_s
puts "Preço do filme: " + price.to_s

#Usando #{}
puts "Nome do filme: #{name}, Ano de lançamento: #{yearRelease}, Preço do filme: #{price}"

# 4-String Multilinha
puts <<~MULTILINE_STRING
  Nome do filme: #{name}
  Ano de lançamento: #{yearRelease}
  Preço do filme: #{price}
MULTILINE_STRING