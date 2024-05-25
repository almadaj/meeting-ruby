require 'faker'
require 'csv'

puts Faker.class
puts Faker::Name.name
puts Faker::Name.first_name
puts Faker::Name.last_name

puts Faker::Music.instrument
puts Faker::Sports::Football.player

dados = []

for i in 0..19
  nome = Faker::Name.name
  email = Faker::Internet.email
  phone = Faker::PhoneNumber.phone_number

  dados << [nome, email, phone]
end

archive = "data/faker.csv"
CSV.open(archive, "w") do |csv|
  csv << ["Nome", "Email", "Telefone"]

  dados.each do |dado|
    csv << dado    
  end
end

CSV.foreach("data/faker.csv", headers: true) do |row|
  puts "Nome: #{row["Nome"]}, E-mail: #{row["Email"]}, Telefone: #{row["Telefone"]}"
end

puts "Dados salvos com sucesso!"