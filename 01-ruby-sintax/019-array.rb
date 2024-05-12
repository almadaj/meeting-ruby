movies = ["Homem Aranha", "Super Mario Bros"]

numbers = Array.new(5) {|x| x ** 2}
puts numbers

num1 = Array.[](1,2,3)
puts num1

num2 = Array(1..5)
puts num2

for mov in movies
    puts mov
end

i = 0
while i < movies.length
    puts movies[i]
    i+=1
end

movies.each {|a| puts a}

movies << "Avatar"
puts movies