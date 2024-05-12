# 1-Alternativa 1
movies = File.open("data/movies.txt")

movies.each {|line| puts line.strip}

# 2-Alternativa 2
filepath = "data/movies.txt"

File.open(filepath, "r") do |file|
    file.each_line {|line|puts line.strip unless line.strip.empty?}
end