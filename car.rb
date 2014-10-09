class Car

  MAX_SPEED = 200
  class << self
    def max_speed
      200
    end

    def design_year
      2014
    end
  end

  def drive
    ignite_engine
    puts "driving"
  end

  def stop
    puts "stopping"
  end

  def park
    puts "Parking"
  end

  private

  def pump_gas
    puts "gas pumping .."
  end

  def ignite_engine
    puts "starting the car..."
  end

end
