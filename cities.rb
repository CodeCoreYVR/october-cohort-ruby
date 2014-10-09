students = {"BC" => ["Richmond", "Vancouver"], 
            "AB" => ["Edmonton", "Calgary"],
            "ON" => ["Toronto", "Ottawa"]
           }

students.each do |prov, cities|
  puts "#{prov}: #{cities.join(', ')}"
end
