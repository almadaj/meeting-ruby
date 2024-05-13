filepath = "data/cursos.txt"

# File.open(filepath, "w") do |file|
#     file.puts "Criando arquivo de texto..."
#     file.puts "Hello Word"
# end

File.open(filepath, "a") do |file|
    puts "Qual o nome do curso que você está fazendo?"
    course = gets.chomp    
    file.puts course
end

File.open(filepath, "r") do |file|
    file.each_line{|line|puts line.strip}
end