require './lib/game'
require './lib/ship'

game = Game.new

puts "Where would you like to place your ship? Please give me 4 coordinates"
answer = gets.chomp
coordinates = answer.split("")
a = coordinates[0].to_i
b = coordinates[1].to_i
x = coordinates[2].to_i
y = coordinates[3].to_i

game.place(a, b, x, y)
