my_array = *(1..10)

y = 100

my_array.each do |x|
  puts ">>>"
  puts y
  y = x * 2
  z = x * 10
  puts y
  puts ">>>"
end

puts y

puts z
