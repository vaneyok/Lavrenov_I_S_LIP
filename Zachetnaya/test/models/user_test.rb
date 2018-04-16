require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save twice" do
    post = User.new
    post.email = 'test'
    post.save
    post = User.new
    post.email = 'test'
    post.save
    assert !post.save
  end

  test "should not save blank" do
    post = User.new
    post.email = ''
    post.save
    assert !post.save
  end
end
