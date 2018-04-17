require 'minitest/autorun'
require './main.rb'

class Test < MiniTest::Test

	def test_file
		file_mock = MiniTest::Mock.new
		file_mock.expect
	end
end
