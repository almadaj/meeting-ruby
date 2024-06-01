class Game
    attr_accessor :name, :genre, :price #Leitura e escrita
    attr_reader :versions, :multiplayer

    def initialize(name, genre, multiplayer, versions, price)
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price
    end
    
    def to_s
        "#{@name}, #{@genre}, #{@multiplayer}, #{@versions}, #{@price}"
    end

    def technical_sheet
        puts "Nome do Jogo: #{@name}"
        puts "Gênero do Jogo: #{@genre}"
        puts "Preço do Jogo: #{@price}"      
    end
end

class DownloadableGame < Game
    attr_accessor :download_size

    def initialize(name, genre, multiplayer, versions, price, download_size)
        super(name, genre, multiplayer, versions, price)
        @download_size = download_size
    end
end

game1 = Game.new("Fifa", "Esporte", true, [2018, 2019, 2020], 100)
puts game1
puts game1.technical_sheet

game2 = DownloadableGame.new("Call of Duty", "FPS", true, ['Black Ops'], 100, 60)
puts game2
puts game2.technical_sheet