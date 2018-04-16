require 'test_helper'

class ArmstrongNumberControllerTest < ActionDispatch::IntegrationTest

  test "should get input" do
  	get armstrong_number_input_url
    assert_response :success
  end



  test "should get output" do
    get armstrong_number_output_url
    assert_response :success
  end

  test 'should return xml' do
    get armstrong_number_result_in_xml_url
    assert_includes @response.headers['Content-Type'], 'application/xml'  
  end

  test 'should return different results' do
  	 get armstrong_number_output_url, params: {input_value: '3'}
  	 result1 = response.parsed_body

  	 get armstrong_number_output_url, params: {input_value: '1'}
  	 result2 = response.parsed_body

  	 assert_not_equal result1, result2
  end

  test "should return result" do
  	get armstrong_number_output_url, params: {input_value: '1'}
  	assigns[@result] = '[1, 2, 3, 4, 5, 6, 7, 8, 9]'
  end

end
