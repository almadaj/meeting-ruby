class Game
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
    # GETTERS
    def name
        @name
    end
    def genre
        @genre
    end
    def multiplayer
        @multiplayer
    end
    def versions
        @versions
    end
    def price
        @price
    end
    
    # SETTERS
    def name=(new_name)
        @name = new_name
    end

    def genre=(new_genre)
        @genre = new_genre
    end

    def price=(new_price)
        @price = new_price
    end
end

game1 = Game.new

puts game1.name
