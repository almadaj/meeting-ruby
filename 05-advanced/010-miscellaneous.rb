words = ["apple", "cd", "cherry", "dt", "grape", "fig"]

words.each do |word|
  if word =~ /^[^aeiou]+$/
    puts "#{word} só tem consoante"
  else
    puts "#{word} possui vogais e consoantes"
  end  
end

sentence = "A linguagem Ruby é facil e Ruby é divertido"
sentence_sub = sentence.sub(/Ruby/, "Python")
sentence_gsub = sentence.gsub(/Ruby/, 'Python')

#Somente na primeira ocorrência
puts "Usando sub:"
puts "String original: #{sentence}"
puts "String modificada com sub: #{sentence_sub}"

#Em todas as ocorrências
puts "\nUsando gsub:"
puts "String original: #{sentence}"
puts "String modificada com gsub: #{sentence_gsub}"