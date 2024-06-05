require 'mongo'

client = Mongo::Client.new(['localhost:27017'], :database=>'ecommerce')

result = client[:products].delete_one({name: 'Notebook'})

if result.deleted_count > 0
  puts "Dados excluídos com sucesso."
else
  puts "Nenhum documento foi atualizado."
end