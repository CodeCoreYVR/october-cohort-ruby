bc_cities_population = {vancouver: 2135201, victoria: 316327, 
                        abbotsford: 149855, kelowna: 14167, nanaimo: 88799, 
                        white_rock: 82368, kamloops: 73472, chilliwack: 66382
                      }

bc_cities_population.each do |city, population|
  city = city.to_s.split("_").map(&:capitalize).join(" ")
  puts "#{city} is #{population > 100000 ? "large" : "small"}"
  # if population > 100000
  #   puts "#{city} is large"
  # else
  #   puts "#{city} is small"
  # end
end

# white_rock
# ["white", "rock"]
# ["White", "Rock"]
# "white Rock"
