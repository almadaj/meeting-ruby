require 'pg'

conn = PG.connect(
    dbname: 'fliperama',
    user: 'postgres',
    password: 'juliano1',
    host: 'localhost',
    port: 5432
)

# Adicionando os dados como um array
registros = [
    {name: "The Last of Us", year: 2023, rate: 9.8},
    {name: "Spider Man 2", year: 2023, rate: 9.5}
]

# Iterando os dados do array
registros.each do |registro|
    name = registro[:name]  
    year = registro[:year]  
    rate = registro[:rate]
    
    # Instrução SQL
    insert_query = "INSERT INTO jogo(name, year, rate) VALUES('#{name}', '#{year}', '#{rate}')"
    conn.exec(insert_query)
end

puts "Inseridos com sucesso"

conn.close