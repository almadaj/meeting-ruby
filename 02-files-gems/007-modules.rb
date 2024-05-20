module LengthConversion
  def self.miles_to_feet(miles)
    miles * 5280    
  end
  
  def self.miles_to_inch(miles)
    feet = miles_to_feet(miles)    
    feet * 12
  end

  def self.miles_to_cm(miles)
    inch = miles_to_inch(miles)    
    inch * 2.54
  end
end

# puts LengthConversion.miles_to_inch(200)
# puts LengthConversion.miles_to_feet(100)
# puts LengthConversion.miles_to_cm(150)