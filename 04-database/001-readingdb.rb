require 'pg'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: 'juliano1',
    host: 'localhost',
    port: 5432
)

query = 'SELECT * FROM jogo'

begin
  result = conn.exec(query)

  result.each do |row|
    puts "ID: #{row['id']}, Nome: #{row['name']}, Ano de Lançamento: #{row['year']}, Nota: #{row['rate']}"    
end
ensure
    conn.close if conn
end
