require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'no to second' do
    res1 = User.create(username: '1', password: '123', password_confirmation: '123')
    assert res1.save
    res2 = User.create(username: '1', password: '234', password_confirmation: '234')
    assert !res2.save
  end
end
