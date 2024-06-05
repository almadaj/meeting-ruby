require 'mongo'

client = Mongo::Client.new(['localhost:27017'], :database=>'ecommerce')

collection = client[:products]
documents = collection.find

documents.each do |document|
  puts "Nome: #{document[:name]}, Categoria: #{document[:category][:name]}"
end