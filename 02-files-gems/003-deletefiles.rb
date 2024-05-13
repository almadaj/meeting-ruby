File.rename("data/files.txt", "data/files.txt") do |file|
    file.puts "Criando arquivo de texto..."
    file.puts "Hello Word"
end

if File.exist?("data/files.txt")
    File.delete("data/files.txt")
end