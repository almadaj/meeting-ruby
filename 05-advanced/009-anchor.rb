strings = ["Olá, mundo", "Olá, OBC!", "Ruby é divertido, Olá, mundo!"]

strings.each do |string|
    if string =~ /\AOlá.*mundo\z/
        puts "#{string} é padrão"
    else
        puts "#{string} não é padrão"
    end  
end

strings2 = ["Ruby-3.2", "Ruby-2.0", "Ruby-3.0 é poderoso"]

strings2.each do |string|
  if string =~ /^Ruby.*3\.2$/
    puts "#{string} corresponde ao padrão."
  else
    puts "#{string} não corresponde ao padrão."
  end
end