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
    
    protected
    def sale_price(discount_percent)
        @price -= (@price * discount_percent.to_f/100)
    end
end

game = Game.new("Alan Wake", "Action", false, [], 150)
puts game
game.send(:sale_price, 20)
puts game.price