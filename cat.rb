class Cat
  attr_accessor :color, :height, :hp

  def initialize(color, height)
    @color, @height, @hp = color, height, 10
  end

  def catch(bird)
    unless @bird.nil?
        puts "Already has a bird"
    else
      fight_with_bird(bird)
    end
  end

  def eat
    if @bird
      puts "Eating bird with height: #{@bird.height} and color: #{@bird.color}"
      @hp += 10
      @bird = nil
    else
      puts "No birds to each"
    end
  end

  private

  def fight_with_bird(bird)
    if rand() > 0.5
      @bird = bird
      @bird.notify_dead
    else
      puts "Misssssed!"
      @hp -= 2
      puts "I'm Dead!!!" if @hp <= 0
    end
  end

end
