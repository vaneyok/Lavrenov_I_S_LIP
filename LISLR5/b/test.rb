require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test
	
	def setup
	end
	
	def teardown
	end
	
	def test_ok
		assert_equal 'horse cat mouse dog' , string_changer('cat horse mouse dog')
	end
	
end
