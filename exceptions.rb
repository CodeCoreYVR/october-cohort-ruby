begin
  10 / 0
rescue => e
  puts "You can't divide by 0! #{e.backtrace}"
end