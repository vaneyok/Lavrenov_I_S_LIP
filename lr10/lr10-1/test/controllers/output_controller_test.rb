require 'test_helper'

class OutputControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'check_rss_format' do
    get '/', params: { word: '3', format: :rss }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/rss'#тип ответа
  end

end
