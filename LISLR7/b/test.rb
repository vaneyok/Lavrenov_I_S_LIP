require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test
	
	def test_relatives
		assert_kind_of IntNum, IntAndFloat.new(45676, 33.35)
	end
	
	def test_length
		assert_equal 5, IntAndFloat.new(45676, 33.35).length_of_num
	end
	
end
