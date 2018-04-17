require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test
	
	def setup
	end
	
	def teardown
	end
	
	def test_ok
		assert_in_delta 0.002, calc(8), 1e-3
	end
	
	def test_fail
		assert_raises TypeError do
			calc 'eight'
		end
	end
end
