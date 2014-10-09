canada = {"BC" => "Victoria", "AB" => "Edmonton", "ON" => "Toronto"}

canada.each do |prov, capital|
  puts "#{prov} capital is #{capital}"
end
