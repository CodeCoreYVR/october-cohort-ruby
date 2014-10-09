module Computer

  class Apple
    def self.info
      "I'm a Mac!"
    end
  end

end

class Fruit::Apple
  def self.info
    "I'm a PC"
  end
end


puts Computer::Apple.info

puts Fruit::Apple.info

