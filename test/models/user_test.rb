require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User has many habits" do
    user = User.create(email: "joao@mail.com", password: "123456", name: "João")
    habit = Habit.create(name: "Exercise", state: "not done yet", user: user)
    habit = Habit.create(name: "Code", state: "not done yet", user: user)
    
    assert_equal 2, user.habits.size
  end
end
