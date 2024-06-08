puts Time.new
puts Time.now

puts Time.new(2023)
puts Time.new(2023, 5)
puts Time.new(2023, 5, 12)
puts Time.new(2023, 5, 12, 18)
puts Time.new(2023, 5, 12, 18, 43)
puts Time.new(2023, 5, 12, 18, 43, 51)

some_time = Time.new(2023, 5, 12, 18, 43, 51)

puts some_time.year
puts some_time.month
puts some_time.day
puts some_time.hour
puts some_time.min
puts some_time.sec
puts some_time.mday
puts some_time.yday
puts some_time.wday
puts some_time.monday?
puts some_time.friday?

start_of_year = Time.new(2024, 1, 1)
puts start_of_year + (60 * 60 * 24 * 30)