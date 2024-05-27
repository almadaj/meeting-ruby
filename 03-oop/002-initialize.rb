class Game
    def initialize
        puts "Objeto GAME criado!"
        @name = "PES"
        @genre = "Sport"
        @multiplayer = true
        @version = [2018, 2019, 2020]
    end
end

game1 = Game.new
puts game1
p game1