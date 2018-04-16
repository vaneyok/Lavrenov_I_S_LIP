require 'test_helper'

class Lr8ControllerTest < ActionDispatch::IntegrationTest
=begin
  test "should get input" do
    get lr8_input_url
    assert_response :success
  end

  test "should get output" do
    get lr8_output_url
    assert_response :success
  end

  test "should get 4 numbers for input 3" do 
    get lr8_output_url, params: {word: '3'} 
    assert_equal assigns[:numbers], [153, 370, 371, 407] 
 end

  test "should get message about no numbers" do 
    get lr8_output_url, params: {word: '2'}
    assert_equal assigns[:result], :not_found 
  end 

  test "should get error message for incorrect params" do 
    get lr8_output_url, params: {word: 'a'}
    assert_equal assigns[:result], :nan
  end 

  test "should get error message for empty params" do 
    get lr8_output_url, params: {word: ''}
    assert_equal assigns[:result], :blank
  end 
=end
end
