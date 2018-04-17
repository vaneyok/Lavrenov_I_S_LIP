require_relative './main.rb'
print 'Input a string: '
input = gets
string = input.chomp
if string =~ /[A-Za-z]/
	print 'New string is: ', string_changer(string)
else
	print 'Wrong type of input'
end