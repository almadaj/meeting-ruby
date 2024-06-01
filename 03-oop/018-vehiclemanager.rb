class Vehicle
  attr_accessor :sign, :brand
  def initialize(sign, brand)
    @sign = sign
    @brand = brand    
  end
  def to_s
    "#{@sign}, #{@brand}"
  end

  def details
    puts "Placa: #{@sign}"
    puts "Marca: #{@brand}"
  end
end

class Car < Vehicle
  attr_accessor :doors
  def initialize(sign, brand, doors)
    super(sign, brand)
    @doors = doors
  end
  def details
    super
    puts "Portas: #{@doors}"
  end
end

class Bike < Vehicle
  attr_accessor :cc
  def initialize(sign, brand, cc)
    super(sign, brand)
    @cc = cc
  end
  def details
    super
    puts "Cilindradas: #{@cc}"
  end
end

def show_details(vehicle)
  puts vehicle.details
end

carro = Car.new("ABC123", "Toyota", 4)
moto = Bike.new("XYZ123", "Honda", 250)

show_details(carro)
show_details(moto)
