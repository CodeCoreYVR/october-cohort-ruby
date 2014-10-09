require "./bird.rb"
require "./cat.rb"

bird = Bird.new "Yellow", 10

cat = Cat.new "Black", 100

cat.catch bird

cat.eat

cat.catch bird

cat.eat