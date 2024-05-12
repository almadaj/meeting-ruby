def fullname (fname, lname)
    puts "#{fname} #{lname}"  
end

def sum(a, b)
    return a+b
end

def address(country="Brasil")
    puts "Eu moro no #{country}"
end

def ratingMovies(qtdRating)
    puts "Informe o nome do filme:"
    movie_name = gets.chomp
    sum = 0
    for i in 1..qtdRating
        puts "Digite a nota para o filme:"
        note = gets.chomp.to_f
        sum += note
    end
    puts "Média de avaliação do filme #{movie_name} é: #{sum / qtdRating}"
end

ratingMovies(2)