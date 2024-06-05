require 'mongo'

client = Mongo::Client.new(['localhost:27017'], :database=>'ecommerce')

result = client[:products].insert_one({
  'name' =>'Notebook',
  'category' => {
    'name' => 'Eletrônicos'
  }
})

if result.successful?
  puts "Dados inseridos com sucesso. Id: #{result.inserted_id}"
else
  puts "Falha ao inserir os dados"
end