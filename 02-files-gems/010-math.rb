# puts Math.sqrt(4)
# puts Math.sqrt(5)
# puts Math.sin(90)

# puts Math::PI

def calculo_area(raio)
  return Math::PI * raio**2
end

puts "Insira o valor do raio:"
raio = gets.chomp.to_f

area = calculo_area(raio)

puts "Área do círculo é de #{area.round(2)}"