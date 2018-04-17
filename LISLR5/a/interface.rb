require_relative './main.rb'
print 'Input a number: '
input = gets
number = input.chomp.to_s
if number =~ /^[0-9]+$/
	print 'y = ', calc(number.to_i)
else
	print 'Wrong type of input'
end
return 0;