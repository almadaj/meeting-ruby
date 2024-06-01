require 'pg'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: 'juliano1',
    host: 'localhost',
    port: 5432
)

query = "SELECT * FROM jogo"

result = conn.exec(query)
  
result.each do |row|
    puts "ID: #{row['id']}, Nome: #{row['name']}, Ano de Lançamento: #{row['year']}, Nota: #{row['rate']}"    
end
# ID do jogo a ser atualizado
puts "Você deseja alterar qual jogo? (ID)"
id_update = gets.chomp.to_i

# Novos valores
# new_name = "Mortal Kombat 1"
# new_year = 2023
# new_rate = 7
puts "Digite o novo nome:"
new_name = gets.chomp

puts "Digite o ano de lançamento:"
new_year = gets.chomp.to_i

puts "Digite a nota:"
new_rate = gets.chomp.to_f

query_update = "UPDATE jogo SET name = '#{new_name}', year = '#{new_year}', rate = '#{new_rate}' WHERE id = '#{id_update}'"

conn.exec(query_update)

puts "Alterado com sucesso"
conn.close