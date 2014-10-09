puts "Give me a number"

a = gets.chomp.to_i

puts a > 10 ? "Large Number" : "Small Number"

puts if a > 10
       "Large Number"
     else
       "Small Number"
     end
