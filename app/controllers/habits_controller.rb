class HabitsController < ApplicationController
    before_action :find_habit, only: [:show, :edit, :update, :destroy]
    
    def index
        @habits = Habit.where(user: current_user)
        @day = DatePicker.call
        @done = false
    end
    
    def show
    end

    def new
        @habit = Habit.new
    end
    
    def create
        @habit = Habit.create(habits_params)
        @habit.name.capitalize!
        @habit.user = current_user
        if @habit.save
            redirect_to habits_path
        else
            redirect_to new_habit_path
        end            
    end


    def edit
    end

    def update
        @habit.update(habits_params)
        redirect_to habits_path
    end

    def destroy
        @habit.destroy

        redirect_to habits_path
    end
    
    private

    def habits_params
        params.require(:habit).permit(:name)
    end

    def find_habit
        @habit = Habit.find(params[:id])
    end
end
