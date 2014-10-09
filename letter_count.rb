words = ["hello", "greetings", "hello", "hi"]

result = {}

words.each do |word|
  result[word.to_sym] = word.length
end

puts result
