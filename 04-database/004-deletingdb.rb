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
puts "Você deseja excluir qual jogo? (ID)"
id_delete = gets.chomp.to_i

query_delete = "DELETE FROM jogo WHERE id = '#{id_delete}'"

conn.exec(query_delete)

puts "Deletado com sucesso!"
conn.close