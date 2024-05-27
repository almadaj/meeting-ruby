class Game
    def initialize
        puts "Objeto GAME criado!"
        @name = "PES"
        @genre = "Sport"
        @multiplayer = true
        @versions = [2018, 2019, 2020]
        @price = 99
    end
    
    def information
        puts "O jogo é do gênero #{@genre} e as versões: #{@versions}"
    end

    def technical_sheet
        puts "##Dados do Jogo##"
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"
    end
end

game1 = Game.new

puts game1.information
puts game1.technical_sheet