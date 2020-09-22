require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Testing the relationship of habits with user, user has many habits" do
    user = User.create(email: "joao@mail.com", password: "123456")
    habit = Habit.create(name: "Exercise", user: user)
    habit = Habit.create(name: "Code", user: user)
    
    assert_equal 2, user.habits.size
  end
end
