require 'csv'

# Solicitando dados do usuário
puts "Por favor, insira os dados da pessoa:"
print "Nome: "
nome = gets.chomp
print "Idade: "
idade = gets.chomp.to_i
print "Cidade: "
cidade = gets.chomp

# Adicionando os novos dados ao arquivo CSV
CSV.open("data/agenda.csv", "a") do |csv|
  csv << [nome, idade, cidade]
end

# Lendo e imprimindo todos os dados no arquivo CSV
CSV.foreach("data/agenda.csv", headers: true) do |row|
  puts "Nome: #{row["Nome"]}, Idade: #{row["Idade"]}, Cidade: #{row["Cidade"]}"
end