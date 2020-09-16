require 'test_helper'

class HabitTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: "Maria", email: "maria@gmail.com", password: "123456")
    @habit = Habit.create(name: "Pular corda", user: @user)  
  end
  test "Testing the relationship between the user and the habit, a habit has a user" do
    
    assert_not_nil @habit.user 
  end

  test "Shouldn't save habit in the db if there's no name" do
    @habit.update(name: nil)

    assert_not @habit.save
  end
  test "Shouldn't save habit in the db if there's no user" do
    @habit.update(user: nil)
  
    assert_not @habit.save
  end
end
