require 'minitest/autorun'
require_relative './main.rb'

class Test < MiniTest::Test
	
	def setup
	end
	
	def teardown
	end
	
	def test_ok
		assert_in_delta 3.576e-05, root(0, 300, 0, ->(x) {x**2 + Math.sin(x/2)}), 1e-3
		assert_in_delta 0.513, root(0, 300, 1) {|x| Math.atan(x) + x}, 1e-3
	end
	
end
