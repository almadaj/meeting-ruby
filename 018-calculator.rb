sum = lambda do |num1, num2|
    num1 + num2
end

sub = lambda do |num1, num2|
    num1 - num2
end

times = lambda do |num1, num2|
    num1 * num2
end

div = lambda do |num1, num2|
    num1 / num2
end

def operation(function)
    puts "Informe o primeiro: "
    num1 = gets.chomp.to_f
    
    puts "Informe o segundo: "
    num2 = gets.chomp.to_f
    
    result = function.call(num1, num2)
    puts " Resultado = #{result} ".center(50, "-")
end

begin
    puts "Calculadora: "
    op = gets.chomp
    case op
        when "+" then operation sum
        when "-" then operation sub
        when "*" then operation times
        when "/" then operation div 
    end
end while op != 'q'

