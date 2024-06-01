class Game
    attr_accessor :name, :genre, :price #Leitura e escrita
    attr_reader :versions, :multiplayer

    @@num_jogos = 0

    def initialize(name, genre, multiplayer, versions, price)
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price

        @@num_jogos += 1
    end
    
    def to_s
        "#{@name}, #{@genre}, #{@multiplayer}, #{@versions}, #{@price}"
    end

    def technical_sheet
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"      
    end
    
    def self.total_games
        @@num_jogos
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.technical_sheet

game2 = Game.new("Alan Wake", "Suspense", false, [], 200)
puts game2
puts game2.technical_sheet

game3 = Game.new("A Way Out", "Ação", false, [], 30)
puts game3
puts game3.technical_sheet

puts Game.total_games