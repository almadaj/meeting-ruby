phrase = "A linguagem Ruby é poderosa e versátil. Ruby é divertida de aprender."
padrao = /Ruby/

resultados = phrase.scan(padrao)
puts "O padrão 'Ruby' foi encontrado #{resultados.length} vezes na string."
puts "As ocorrências encontradas foram: #{resultados.join(', ')}"

phrase2 = "A OpenAI lançou o GPT-3 em 2020 e o GPT-4 em 2022."
numeros = phrase2.scan(/\d+/)

puts "Os números inteiros da frase são: #{numeros.join(', ')}"