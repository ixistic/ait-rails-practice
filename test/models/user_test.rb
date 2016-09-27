require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test 'assign role' do
    @user.assign_role
    assert @user.member?
  end

  test 'check role admin' do
    @user.assign_role
    refute @user.admin?
  end

  test 'check role member' do
    @user.assign_role
    assert @user.member?
  end
end
