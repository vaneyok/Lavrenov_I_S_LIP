require 'test_helper'

class UserIntegrationTest < ActionDispatch::IntegrationTest

  test 'require login' do
    get lr8_output_path, params: { word: 1 }
    assert_redirected_to session_new_path
  end

  test 'get root after error sign in' do
    post session_create_path, params: { username: 'user', password: 'password' }
    get session_new_path
    assert_response :success
  end

  test 'get root after success sign in' do
    #get users_new_path, params: {username: 'user', password: 'user', password_confirmation: 'user'}
    #get session_new_path, params: {username: 'user', password: 'user'}
    post users_path, params: { user: { username: 'user', password: 'password' } }
    get root_path
    assert_response :success
  end  

  test 'create users' do
    old_count = User.count
    post users_path, params: { user: { username: 'user', password: 'password' } }
    new_count = User.count
    assert new_count > old_count
  end

end