require_relative './main.rb'

puts "Lambda: "
p root(0, 300, 0, ->(x) {x**2 + Math.sin(x/2)})
p root(0, 300, 1, ->(x) {Math.atan(x) + x})
puts "Block: "
p root(0, 300, 0) {|x| x**2 + Math.sin(x/2)}
p root(0, 300, 1) {|x| Math.atan(x) + x}