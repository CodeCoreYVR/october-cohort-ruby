class TestAttrMethods
  att_reader :a
  attr_writer :b, :c

  def initialize(greeting)
    @a = greeting
    @b = "hello"
    @c = "Bonjour"
  end

  def greetings
    puts "#{a} #{@b} #{@c}"
  end

end