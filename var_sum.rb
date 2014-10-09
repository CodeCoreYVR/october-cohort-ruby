def sum(a, *b)
  result = a
  b.each {|i| result += i }
  result
end

puts sum(4,5,6,6,3,4,4)

def sum(*b)
  result = 0
  b.each {|i| result += i }
  result
end

puts sum(4,5,6,6,3,4,4)
