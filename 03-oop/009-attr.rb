class Game
    # attr_reader :name, :genre, :price #Só leitura
    # attr_writer :name, :genre, :price #Só escrita
    attr_writer :versions, :multiplayer
    attr_accessor :name, :genre, :price #Leitura e escrita

    def initialize
        puts "Objeto GAME criado!"
        @name = "PES"
        @genre = "Sport"
        @multiplayer = true
        @versions = [2018, 2019, 2020]
        @price = 99
    end
    def to_s
        "#{@name}, #{@genre}, #{@multiplayer}, #{@versions}, #{@price}"
    end
end

game = Game.new
p game.name
game.name = "Resident Evil"
game.genre = "Horror"
game.price = "299"
p game