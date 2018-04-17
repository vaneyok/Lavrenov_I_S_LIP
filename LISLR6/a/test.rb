require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test
	
	def setup
	end
	
	def teardown
	end
	
	def test_ok
		assert_in_delta( 1.618033989, calc(1e-3), 1e-3)
		assert_in_delta( 1.618033989, calc(1e-4), 1e-4)
	end
	
end
