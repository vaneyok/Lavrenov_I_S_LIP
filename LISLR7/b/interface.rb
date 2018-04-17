require_relative './main.rb'

puts "Checking IntNum class"
print('Enter an integer number: ')
inum = gets
intnum = IntNum.new(inum)
intnum.show_num
intnum.length_of_num

puts "Checking IntAndFloat class"
print('Enter an integer number: ')
inum = gets
print('Enter a float number: ')
fnum = gets
intandfloat = IntAndFloat.new(inum,fnum)
intandfloat.show_num
intandfloat.length_of_num