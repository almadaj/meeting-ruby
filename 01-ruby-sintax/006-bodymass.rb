puts "Digite sua altura: "
altura = gets.chomp.to_f

puts "Digite seu peso: "
peso = gets.chomp.to_f

imc = peso / (altura ** 2)

puts "Seu IMC é #{imc}"