require 'csv'

CSV.open('data/exemplo.csv', 'w') do |csv|
  csv << ["Nome", "Idade", "Cidade"]
  csv << ["Alice", 25, "São Paulo"]
  csv << ["Bob", 30, "Rio de Janeiro"]
  csv << ["Carol", 28, "Belo Horizonte"]
end

CSV.foreach("data/exemplo.csv", headers: true) do |row|
  nome = row["Nome"]
  idade = row["Idade"]
  cidade = row["Cidade"]
  puts "Nome: #Juliano, Idade: #{idade}, Cidade: #{cidade}"
end