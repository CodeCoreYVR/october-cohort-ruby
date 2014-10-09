class Computer

  def initialize(brand, memory, cpu_power)
    @brand, @memory, @cpu_power = brand, memory, cpu_power
  end

  def about
    puts "#{brand} computer has #{memory} of RAM and #{cpu_power} 
          of CPU Power"
  end


end