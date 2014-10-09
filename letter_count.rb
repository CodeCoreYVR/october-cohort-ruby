words = ["hello", "greetings", "hello", "hi"]

result = {}

words.each do |word|
  result[word.to_sym] = word.length
end

puts result


bc_cities_population = {vancouver: 2135201, victoria: 316327, abbotsford: 149855, kelowna: 14167, nanaimo: 88799, white_rock: 82368, kamloops: 73472, chilliwack: 66382}