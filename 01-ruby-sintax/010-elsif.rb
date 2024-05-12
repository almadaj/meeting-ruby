puts "Digite o número 1"
num1 = gets.chomp.to_i

puts "Digite o número 2"
num2 = gets.chomp.to_i

puts "Digite a operação a realizar (+ - * /)"
op = gets.chomp

if op == "+"
    result = num1 + num2
elsif op == "-"
    result = num1 - num2
elsif op == "*"
    result = num1 * num2
elsif
    result = num1 / num2
else
    puts 'Operação Inválida'
end

puts "Resultado é #{'%.2f' % result}"