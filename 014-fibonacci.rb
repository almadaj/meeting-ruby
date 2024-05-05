num1 = 0
num2 = 1

puts "Digite o número de termos da sequência: "
n = gets.chomp.to_i

for i in 0..n
  num1 = num1 + num2
  num2 = num1 - num2
  i += 1
  puts "#{num1}"
end