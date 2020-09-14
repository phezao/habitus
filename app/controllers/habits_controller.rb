class HabitsController < ApplicationController
    before_action :find_habit, only: [:show, :edit, :update, :destroy]
    
    def index
        @habits = Habit.where(user: current_user)
    end
    
    def show
    end

    def new
        @habit = Habit.new
    end
    
    def create
        @habit = Habit.create(habits_params)
        @habit.user = current_user
        if @habit.save
            redirect_to habit_path(@habit)
        else
            redirect_to new_habit_path
        end            
    end


    def edit
    end

    def update
        @habit.update(habits_params)
        redirect_to habit_path(@habit)
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
