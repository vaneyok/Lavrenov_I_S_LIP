require 'test_helper'

class ArmstrongNumberTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
=begin
   test "not_found" do
   	ArmstrongNumber.create(input_value: '1', result_value: '[1, 2, 3, 4, 5, 6, 7, 8, 9]')
   	assert_equal 'not_found', ArmstrongNumber.find_by_input_value('2').output_value
   end
=end
  test 'no to second' do
    res1=ArmstrongNumber.create(input_value: '1', output_value: '[1, 2, 3, 4, 5, 6, 7, 8, 9]')
    assert res1.save
    res2=ArmstrongNumber.create(input_value: '1', output_value: '[1, 2, 3, 4, 5, 6, 7, 8, 9]')
    assert !res2.save
  end
end
