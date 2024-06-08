def verificar_converter_data(phrase)
  if phrase =~ /\A(\d{2})\/(\d{2})\/(\d{4})\z/
    dia, mes, ano = phrase.scan(/\d+/)
    nova_data = "#{ano}-#{mes}-#{dia}"
    puts "Novo formato: #{nova_data}"
  else
    puts "A data não está no formato correto 'dd/mm/yyyy'"
  end
end

puts "Insira uma data no formato dd/mm/yyyy: "
data = gets.chomp

verificar_converter_data(data)