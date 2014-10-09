class Bird
  attr_accessor :color, :height

  def initialize(color, height)
    @color, @height = color, height
  end

  def notify_dead
    @dead = true
  end

end
