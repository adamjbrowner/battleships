require './lib/game'
require './lib/ship'

game = Game.new

puts "What type of ship would you like to place?"
type = gets.chomp.downcase.to_sym
puts "On what x coordinate would you like the back of your ship to be placed?"
x = gets.chomp.to_i
puts "On what y coordinate would you like the back of your ship to be placed?"
y = gets.chomp.to_i
puts "Facing which direction? Up, Down, Left, Right"
direction = gets.chomp.downcase.to_sym
game.place(Ship.new(type, [x, y], direction))
puts "Give me the x coordinate of your target"
x = gets.chomp.to_i
puts "Give me the y coordinate of your target"
y = gets.chomp.to_i
if game.fire([x, y])
  puts "It's a hit!"
else
  puts "It's a miss!"
end
