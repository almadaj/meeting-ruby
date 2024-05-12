# 1 - Blocks
def hello
    yield
end

hello { puts "Hello World" }

def one_two_three
    yield 1
    yield 2
    yield 3
end

one_two_three { |number| puts number * 3}

# 2-Função de potência de um número
pow = lambda {|number| number ** 2}
puts pow.call(4)

oddEven = lambda{|num| num % 2 == 0}
puts oddEven.call(3)

divNum = lambda{|x,y| x/y}
puts divNum.call(6, 3)