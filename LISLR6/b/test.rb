require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test
	
	def setup
	end
	
	def teardown
	end
	
	def test_ok
		(3..100).each do |r|
			assert_in_delta 2*r*Math::PI, calc(1e-3, r.to_f), 1e-3
			assert_in_delta 2*r*Math::PI, calc(1e-4, r.to_f), 1e-4
		end
	end
	
end
