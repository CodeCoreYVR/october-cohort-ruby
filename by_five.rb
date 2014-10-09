
def by_five?(x)
  x % 5 == 0
end
puts by_five?(10)
puts by_five?(4)

def by_five?(x)
  if x % 5 == 0
    true
  else
    false
  end
end

puts by_five?(10)
puts by_five?(4)

