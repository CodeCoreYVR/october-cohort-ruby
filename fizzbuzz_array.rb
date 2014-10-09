results = []

for i in 1..100
  # results << i
  # results << "FIZZ" if i % 3 == 0
  # results << "BUZZ" if i % 5 == 0
  if i % 15 == 0
    results << "FIZZBUZZ"
  elsif i % 5 == 0
    results << "BUZZ"
  elsif i % 3 == 0
    results << "FIZZ"
  else
    results << i
  end
end

puts results

