
# 1 - Criando Hash
movie = {"name" => "Avatar", "year" => 2023}

puts movie

# 2 - Iterando valores (For, WHile e Each)
movie2 = {:name => "Homem-Aranha", "year" => 2003}
puts movie2.keys
puts movie2.values

for key, value in movie2
    puts "#{key}-#{value}"
end

movie2.each {|key, value| puts "#{key}: #{value}"}