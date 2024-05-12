
puts "Informe nome: "
fName = gets.chomp
puts "Informe sobrenome: "
sName = gets.chomp
puts "Informe nome: "
company = gets.chomp

# email = fName.downcase + "." + sName.downcase + "@" + company.downcase + ".com"
email = ""
email << fName.downcase.split.join(".")
email << "."
email << sName.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email