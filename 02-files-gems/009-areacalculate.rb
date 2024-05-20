module AreaCalculate
  def self.square(width, length)
    width * length
  end
  def self.triangle (base, height)
    (base * height)/2
  end
end

puts AreaCalculate.square(10, 2)
puts AreaCalculate.triangle(10, 2)