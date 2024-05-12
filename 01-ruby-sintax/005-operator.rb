puts "Digite o primeiro número:"
num1 = gets.chomp.to_i
puts "Digite o segundo número"
num2 = gets.chomp.to_i

# puts sum = num1 + num2
# puts subt = num1 - num2
# puts div = num1 / num2
# puts mult = num1 * num2
# puts mod = num1 % num2
# puts exp = num1 ** num2

# 2-Operadores Atribuição
num1 += 1 # num1 = num1 + 1
num1 -= 1 # num1 = num1 - 1
num1 *= 1 # num1 = num1 * 1
num1 /= 1 # num1 = num1 / 1 

# 3-Atribuição paralela
a, b = 5, 4
a, b = b, a # inverte valores
puts a
puts b

# 4-Operadores de Comparação
bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
different = num1 != num2
bigger_equal = num1 >= num2
smaller_equal = num1 <= num2

# 5-Operadores Lógico
# puts ((2>4) and (3>1))
# puts ((2>4) or (3>1))
# puts ! ((2>4) and (3>1))
# print ('a'..'z').to_a

# 8-Operador Binary Left Shift
name = ""
name << "Fulano"
name << "Sicrano"
puts name