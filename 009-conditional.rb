a = gets.chomp.to_i
b = gets.chomp.to_i

if a > b
    puts "#{a} é maior que #{b}"
elsif a == b
    puts "Iguais"
else
    puts "#{b} é maior que #{a}"
end

puts "Digite o nome do filme: "
name = gets.chomp

puts "Digite o ano de lançamento do filme: "
yearRelease = gets.chomp.to_i

puts "Digite a nota do filme: "
stars = gets.chomp.to_f

if stars > 8 and yearRelease > 2015
    puts "O filme #{name} é top!"
else
    puts "Não assiste o #{name}"
end

