def root(a, b, answer=0, equation = nil)
	while (b-a > 0.0001)
		c = (a+b)/2.0
		if block_given?
			if (yield(b)*yield(c) < answer )
				a = c
			else
				b = c
			end
		else
			if (equation.call(b) * equation.call(c) < answer)
				a = c
			else
				b = c
			end
		end
	end
	(a+b)/2
end