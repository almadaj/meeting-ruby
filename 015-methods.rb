def helloworld
    puts "Hello World"  
end

def sum
    puts 5+4
end

def createMovie
    puts "Digite o nome do filme: "
    name = gets.chomp
    puts "Digite o ano de lançamento do filme:"
    yearLaunch = gets.chomp.to_i
    puts "Digite o preço do filme:"
    price = gets.chomp.to_f

    puts "#{name} #{yearLaunch}- R$ #{price}"
end

createMovie()