require 'test_helper'

class HabitTest < ActiveSupport::TestCase
  test "User must exist in a Habit" do
    user = User.create(name: "Maria", email: "maria@gmail.com", password: "123456")
    habit = Habit.create(name: "Pular corda", user: user)
    
    assert_not_nil habit.user 
  end
end
