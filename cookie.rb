class Cookie

  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    puts "Creating the cookie!"
  end

  # Called a getter in many programming languages
  attr_reader :sugar_amount
  # def sugar_amount
  #   @sugar_amount
  # end

  # Called a setter in many programming languages
  attr_writer :sugar_amount
  # def sugar_amount=(value)
  #   @sugar_amount = value
  # end

  attr_accessor :flour_amount
  # def flour_amount
  #   @flour_amount
  # end

  # def flour_amount=(value)
  #   @flour_amount = value
  # end

  def abc
    puts @abc
  end

  def info
    puts "This cookie has #{@sugar_amount}g of 
          sugar and #{@flour_amount}g of flour"
  end

  def self.info
    puts "This class generates a cookie that can be baked and eaten"
  end

  def bake(sugar_amount)
    @sugar = sugar_amount
    put_in_oven
    puts "Baking the cookie!! with #{sugar_amount}g of sugar"
  end

  def eat
    puts @sugar
    puts "So Yummy!"
  end

  def bake_n_eat
    bake
    eat
  end

  private

  def put_in_oven
    puts "Putting Cookie in oven!"
  end

end


class Oreo < Cookie
  attr_accessor :filling_type


  def info
    puts "This is an Oreo Cookie with #{filling_type} Filling!"
    super
  end

end






