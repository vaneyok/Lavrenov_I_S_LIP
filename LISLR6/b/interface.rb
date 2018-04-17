require_relative './main.rb'

print 'Input precision 1e-3 or 1e-4: '
precision = gets.to_f
if precision==0.001||precision==0.0001
	print calc(precision)
else
	print 'Precision is wrong'
end
