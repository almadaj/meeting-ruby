require 'mongo'

client = Mongo::Client.new(['localhost:27017'], :database=>'ecommerce')

result = client[:products].update_one(
  {name: 'Notebook'},{
    "$set"=>{'category': {
      'name' => 'Dispositivos Móveis'
    }}
  }
)

if result.modified_count > 0
  puts "Dados atualizados com sucesso."
else
  puts "Nenhum documento foi atualizado."
end