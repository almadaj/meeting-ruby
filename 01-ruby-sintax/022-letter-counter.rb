def letter_counter(text)
    chars = ('a'..'z').to_a + ('A'..'Z').to_a
    frequency = {}
    text.each_char do |char|
        if chars.include?(char)
            unless frequency.key?(char)
                frequency[char]=1
            else
                frequency[char]+=1        
            end
        end      
    end
    return frequency
end
puts "Informe a frase/palavra: "
word = gets.chomp.downcase
puts letter_counter(word)
