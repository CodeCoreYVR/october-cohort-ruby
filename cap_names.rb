names     = %w(john paul george rick)
cap_names = []

names.each do |name|
  cap_names << name.capitalize
end

puts cap_names
