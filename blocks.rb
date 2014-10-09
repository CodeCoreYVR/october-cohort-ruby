def my_method
  puts "Hello World"
  y = 4
  yield(y) if block_given?
end

my_method do |x|
  puts "Hey There! #{x}"
end

my_method