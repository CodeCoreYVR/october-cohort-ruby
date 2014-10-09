names = %w(john paul george rick)

cap_names = names.map {|name| name.capitalize}

puts names.map(&:capitalize).to_s

puts cap_names.to_s

