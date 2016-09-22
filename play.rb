require './lib/game'
require './lib/ship'

game = Game.new

puts "What type of ship would you like to place?"
type = gets.chomp.to_sym
puts "And where would you like the front of your ship to be placed?"
front = gets.chomp.split("")
puts "Facing which direct? Up, Down, Left, Right"
coordinates = answer.split("")
a = coordinates[0].to_i
b = coordinates[1].to_i
x = coordinates[2].to_i
y = coordinates[3].to_i

game.place(a, b, x, y)
